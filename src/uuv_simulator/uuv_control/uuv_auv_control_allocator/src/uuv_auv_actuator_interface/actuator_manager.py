# Copyright (c) 2016-2019 The UUV Simulator Authors.
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
from .fin_model import FinModel
import rospy
import numpy as np
import tf2_ros
from tf_quaternion.transformations import quaternion_matrix
from uuv_thrusters.models import Thruster
from uuv_auv_control_allocator.msg import AUVCommand
from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped
from geometry_msgs.msg import Wrench, WrenchStamped
import os
import yaml


class ActuatorManager(object):
    MAX_FINS = 4


    def __init__(self):
        # Acquiring the namespace of the vehicle
        self.namespace = rospy.get_namespace().replace('/', '')
        rospy.loginfo('Initialize control allocator for vehicle <%s>' % self.namespace)  

        self.tf_buffer = tf2_ros.Buffer()  #tf_buffer is used to store and manage the transformations between different frames.
        self.listener = tf2_ros.TransformListener(self.tf_buffer) #listener listens for transformations and adds them to the tf_buffer.
        tf_trans_ned_to_enu = None #Initializes a variable to hold the transformation between NED and ENU frames.



        #This block attempts to look up the transformation between the base link and base link in NED frame (source to target).
        try:

            #If namespace is not empty, the following lines construct the target and source frames with the namespace.
            if self.namespace != '':
                target = '{}/base_link'.format(self.namespace)
                source = '{}/base_link_ned'.format(self.namespace)
            else:
                target = 'base_link'   
                source = 'base_link_ned'
            rospy.loginfo('Lookup transfrom from %s to %s' % (source, target))

            #The lookup_transform method tries to get the transformation between the frames within a specified timeout (rospy.Duration(1)).
            #If no transformation is found, it logs a warning and sets base_link_ned_to_enu to None.
            tf_trans_ned_to_enu = self.tf_buffer.lookup_transform(
                target, source, rospy.Time(), rospy.Duration(1))
        except Exception as e:
            rospy.logwarn('No transform found between base_link and base_link_ned'
                  ' for vehicle {}, message={}'.format(self.namespace, e))
            self.base_link_ned_to_enu = None


            #If transformation is successful,this block converts the quaternion representation of the rotation to a rotation matrix.
            #The rotation matrix is saved in base_link_ned_to_enu
        if tf_trans_ned_to_enu is not None:
            self.base_link_ned_to_enu = quaternion_matrix(
                (tf_trans_ned_to_enu.transform.rotation.x,
                 tf_trans_ned_to_enu.transform.rotation.y,
                 tf_trans_ned_to_enu.transform.rotation.z,
                 tf_trans_ned_to_enu.transform.rotation.w))[0:3, 0:3]

            rospy.logwarn('base_link transform NED to ENU=\n{}'.format(
                self.base_link_ned_to_enu))

        self.base_link = rospy.get_param('~base_link', 'base_link')

        # Check if the thruster configuration is available
        if not rospy.has_param('~thruster_config'):
            raise rospy.ROSException('Thruster configuration not available') 

        # Retrieve the thruster configuration parameters
        self.thruster_config = rospy.get_param('~thruster_config')        

        # Check if all necessary thruster model parameter are available
        thruster_params = ['conversion_fcn_params', 'conversion_fcn', 
            'topic_prefix', 'topic_suffix', 'frame_base', 'max_thrust']
        for p in thruster_params: 
            if p not in self.thruster_config:
                raise rospy.ROSException(
                    'Parameter <%s> for thruster conversion function is missing' % p)

        # Setting up the thruster topic name
        self.thruster_topic = '/%s/%s/%d/%s' %  (self.namespace, 
            self.thruster_config['topic_prefix'], 0, 
            self.thruster_config['topic_suffix'])    #example output: /eca_a9/thrusters/0/input
        self.thruster = None  

        # Check if the fin configuration is available
        if not rospy.has_param('~fin_config'):
            raise rospy.ROSException('Fin configuration is not available')

        # Retrieve the fin configuration is available
        self.fin_config = rospy.get_param('~fin_config')

        # Check if all necessary fin parameters are available
        fin_params = ['fluid_density', 'lift_coefficient', 'fin_area', 
            'topic_prefix', 'topic_suffix', 'frame_base']
        
        for p in fin_params:
            if p not in self.fin_config:
                raise rospy.ROSException(
                    'Parameter <%s> for fin configuration is missing' % p)
        
        self.fin_lower_limit = -np.pi / 2
        if 'lower_limit' in self.fin_config:
            self.fin_lower_limit = self.fin_config['lower_limit']

        self.fin_upper_limit = np.pi / 2
        if 'upper_limit' in self.fin_config:
            self.fin_upper_limit = self.fin_config['upper_limit']

        if self.fin_config['lower_limit'] >= self.fin_config['upper_limit']:
            raise rospy.ROSException('Fin angle limits are invalid')

        self.fins = dict()  
                
        self.n_fins = 0  #initial count of fins = 0

        if not self.find_actuators():
            raise rospy.ROSException('No thruster and/or fins found')

    def find_actuators(self):
        """Calculate the control allocation matrix, if one is not given."""
        
        self.ready = False  #Flag representing that the system is not ready.
        rospy.loginfo('ControlAllocator: updating thruster poses')

        base = '%s/%s' % (self.namespace, self.base_link)  #example output: base = eca_a9/base_link

        frame = '%s/%s%d' % (self.namespace, self.thruster_config['frame_base'], 0) #example output: frame = eca_a9/thruster0

        rospy.loginfo('Lookup: Thruster transform found %s -> %s' % (base, frame))
        trans = self.tf_buffer.lookup_transform(base, frame, rospy.Time(), rospy.Duration(1)) #looks up transforms b/w base and thruster frames

        #the translation and rotation components of the transformation are extracted and stored in pos and quat as numpy arrays.
        pos = np.array([trans.transform.translation.x,
                           trans.transform.translation.y,
                           trans.transform.translation.z]) 
        quat = np.array([trans.transform.rotation.x,
                            trans.transform.rotation.y,
                            trans.transform.rotation.z,
                            trans.transform.rotation.w])
        rospy.loginfo('Thruster transform found %s -> %s' % (base, frame))
        rospy.loginfo('pos=' + str(pos))
        rospy.loginfo('rot=' + str(quat))
                
        # Read transformation from thruster
        self.thruster = Thruster.create_thruster(
            self.thruster_config['conversion_fcn'], 0, 
            self.thruster_topic, pos, quat, 
            **self.thruster_config['conversion_fcn_params'])

        #the above line of code initializes a thruster model by creating an instance of the Thruster class. 

        for i in range(self.MAX_FINS):
            try:
                frame = '%s/%s%d' % (self.namespace, self.fin_config['frame_base'], i)  #example output: frame = eca_a9/fin0
                
                rospy.loginfo('Lookup: Fin transform found %s -> %s' % (base, frame))
                trans = self.tf_buffer.lookup_transform(base, frame, rospy.Time(), rospy.Duration(1))
                pos = np.array([trans.transform.translation.x,
                                   trans.transform.translation.y,
                                   trans.transform.translation.z])
                quat = np.array([trans.transform.rotation.x,
                                    trans.transform.rotation.y,
                                    trans.transform.rotation.z,
                                    trans.transform.rotation.w])                
                rospy.loginfo('Fin transform found %s -> %s' % (base, frame))
                rospy.loginfo('pos=' + str(pos))
                rospy.loginfo('quat=' + str(quat))

                fin_topic = '/%s/%s/%d/%s' % (self.namespace, 
                    self.fin_config['topic_prefix'], i, self.fin_config['topic_suffix']) #example output: /eca_a9/fins/0/input


                #This instance represents the properties and behaviour of the fins and is stored in the self.fins dictionary using index as the key.
                self.fins[i] = FinModel(
                    i,
                    pos,
                    quat,
                    fin_topic)

            except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
                rospy.loginfo('Could not get transform from %s to %s ' % (base, frame))
                break

        self.n_fins = len(self.fins.keys()) #sets number of fins
        rospy.loginfo('# fins found: %d' % len(self.fins.keys()))
        
        for i in range(self.n_fins):
            rospy.loginfo(i)
            rospy.loginfo(self.fins[i].pos)
            rospy.loginfo(self.fins[i].rot)  #logs the position and orientation of each fin

        self.ready = True
        return True  #indicates successful initialization of thrusters and fins

        #this method calculates the control force based on the thrust,fin angles(delta),and surge speed (u).
    def compute_control_force(self, thrust, delta, u): 
        actuator_model = self.thruster.tam_column.reshape((6, 1)) * thrust  #actuator model is computed as a product of the thrust allocation matrix and provided thrust force
        for i in self.fins:
            f_lift = (0.5 * self.fin_config['fluid_density'] * 
                self.fin_config['lift_coefficient'] * self.fin_config['fin_area'] *  
                delta[i] * u**2)  #calculates lift forces for each fin. 
        
            tau = np.zeros(6)
            tau[0:3] = f_lift * self.fins[i].lift_vector
            tau[3::] = np.cross(self.fins[i].pos, f_lift)
            
            actuator_model += tau
        return actuator_model

    def publish_commands(self, command):  #the command list will be generated by control algorithms etc.
        self.thruster.publish_command(command[0])   

        for i in range(self.n_fins):
            self.fins[i].publish_command(command[i + 1])