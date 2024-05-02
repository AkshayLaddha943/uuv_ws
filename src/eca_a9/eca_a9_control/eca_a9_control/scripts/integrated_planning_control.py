#!/usr/bin/env python3
import math
import numpy as np
import rospy
from copy import deepcopy
import geometry_msgs.msg as geometry_msgs
import uuv_control_msgs.msg as uuv_control_msgs
import tf
import tf.transformations as trans
from nav_msgs.msg import Odometry
from uuv_thrusters.models import Thruster
from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped
from uuv_control_msgs.msg import TrajectoryPoint
import tf2_ros
from tf_quaternion.transformations import quaternion_matrix
from scipy.spatial.transform import Rotation as R
from uuv_control_msgs.msg import TrajectoryPoint
from visualization_msgs.msg import Marker
from std_msgs.msg import ColorRGBA
from geometry_msgs.msg import Twist


 
class IntegratedAUVController:
    def __init__(self):
        rospy.init_node('integrated_planning_control')

        self.time_last_update = rospy.Time.now()

        self.K_1 = 1
        self.K_2 = 1
        self.R = np.array([1,1,1])
        self.r_i = np.zeros(4)
        self.current_lin_vel = np.zeros(3)
        self.current_ang_vel = np.zeros (0)
        self.desired_orient = np.array([0, 0, 0, 1])
        # self.goal = np.array([25, 10, -20]) 

        self.namespace = rospy.get_namespace().replace('/', '')
        rospy.loginfo('Initialize control for vehicle <%s>' % self.namespace)

        self.inertial_frame_id = rospy.get_param('~inertial_frame_id', 'world')

        self.base_link = rospy.get_param('~base_link', 'base_link')

        # Reading the minimum thrust generated
        self.min_thrust = rospy.get_param('~min_thrust', 0)
        assert self.min_thrust >= 0
        rospy.loginfo('Min. thrust [N]=%.2f', self.min_thrust)

        # Reading the maximum thrust generated
        self.max_thrust = rospy.get_param('~max_thrust', 0)
        assert self.max_thrust > 0 and self.max_thrust > self.min_thrust
        rospy.loginfo('Max. thrust [N]=%.2f', self.max_thrust)

        # Reading the thruster topic
        self.thruster_topic = rospy.get_param('~thruster_topic', 'thrusters/0/input')
        assert len(self.thruster_topic) > 0

        # Reading the thruster gain
        self.p_gain_thrust = rospy.get_param('~thrust_p_gain', 0.0)
        assert self.p_gain_thrust > 0

        self.d_gain_thrust = rospy.get_param('~thrust_d_gain', 0.0)
        assert self.d_gain_thrust >= 0

        # Reading the roll gain
        self.p_roll = rospy.get_param('~p_roll', 0.0)
        assert self.p_roll > 0

        # Reading the pitch P gain
        self.p_pitch = rospy.get_param('~p_pitch', 0.0)
        assert self.p_pitch > 0

        # Reading the pitch D gain
        self.d_pitch = rospy.get_param('~d_pitch', 0.0)
        assert self.d_pitch >= 0

        # Reading the yaw P gain
        self.p_yaw = rospy.get_param('~p_yaw', 0.0)
        assert self.p_yaw > 0

        # Reading the yaw D gain
        self.d_yaw = rospy.get_param('~d_yaw', 0.0)
        assert self.d_yaw >= 0

        # Reading the saturation for the desired pitch
        self.desired_pitch_limit = rospy.get_param('~desired_pitch_limit', 15 * np.pi / 180)
        assert self.desired_pitch_limit > 0

        # Reading the saturation for yaw error
        self.yaw_error_limit = rospy.get_param('~yaw_error_limit', 1.0)
        assert self.yaw_error_limit > 0

        # Reading the number of fins
        self.n_fins = rospy.get_param('~n_fins', 0)
        assert self.n_fins > 0

        # Reading the mapping for roll commands
        self.map_roll = rospy.get_param('~map_roll', [0, 0, 0, 0])
        assert isinstance(self.map_roll, list)
        assert len(self.map_roll) == self.n_fins

        # Reading the mapping for the pitch commands
        self.map_pitch = rospy.get_param('~map_pitch', [0, 0, 0, 0])
        assert isinstance(self.map_pitch, list)
        assert len(self.map_pitch) == self.n_fins

        # Reading the mapping for the yaw commands
        self.map_yaw = rospy.get_param('~map_yaw', [0, 0, 0, 0])
        assert isinstance(self.map_yaw, list)
        assert len(self.map_yaw) == self.n_fins

        # Retrieve the thruster configuration parameters
        self.thruster_config = rospy.get_param('~thruster_config')

        # Check if all necessary thruster model parameter are available
        thruster_params = ['conversion_fcn_params', 'conversion_fcn',
            'topic_prefix', 'topic_suffix', 'frame_base', 'max_thrust']
        for p in thruster_params:
            if p not in self.thruster_config:
                raise rospy.ROSException(
                    'Parameter <%s> for thruster conversion function is '
                    'missing' % p)

        # Setting up the thruster topic name
        self.thruster_topic = '/%s/%s/%d/%s' %  (self.namespace,
            self.thruster_config['topic_prefix'], 0,
            self.thruster_config['topic_suffix'])

        base = '%s/%s' % (self.namespace, self.base_link)

        frame = '%s/%s%d' % (self.namespace, self.thruster_config['frame_base'], 0)

        self.tf_buffer = tf2_ros.Buffer()
        self.listener = tf2_ros.TransformListener(self.tf_buffer)

        rospy.loginfo('Lookup: Thruster transform found %s -> %s' % (base, frame))
        trans = self.tf_buffer.lookup_transform(base, frame, rospy.Time(), rospy.Duration(5))
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

        rospy.loginfo('Thruster configuration=\n' + str(self.thruster_config))
        rospy.loginfo('Thruster input topic=' + self.thruster_topic)

        self.max_fin_angle = rospy.get_param('~max_fin_angle', 0.0)
        assert self.max_fin_angle > 0

        # Reading the fin input topic prefix
        self.fin_topic_prefix = rospy.get_param('~fin_topic_prefix', 'fins')
        self.fin_topic_suffix = rospy.get_param('~fin_topic_suffix', 'input')

        self.rpy_to_fins = np.vstack((self.map_roll, self.map_pitch, self.map_yaw)).T

        self.pub_cmd = list()

        for i in range(self.n_fins):
            topic = '%s/%d/%s' % (self.fin_topic_prefix, i, self.fin_topic_suffix)
            self.pub_cmd.append(
              rospy.Publisher(topic, FloatStamped, queue_size=10))

        self.odometry_sub = rospy.Subscriber(
            'odom', Odometry, self.odometry_callback)

        # self.marker_pub = rospy.Publisher('goal_marker', Marker, queue_size=10)

        self.reference_pub = rospy.Publisher(
            'reference', TrajectoryPoint, queue_size=1)

        # Publish error (for debugging)
        # self.error_pub = rospy.Publisher(
        #     'error', TrajectoryPoint, queue_size=1)

    @staticmethod
    def unwrap_angle(t):
        return math.atan2(math.sin(t),math.cos(t))

    @staticmethod
    def vector_to_np(v):
        return np.array([v.x, v.y, v.z])

    @staticmethod
    def quaternion_to_np(q):
        return np.array([q.x, q.y, q.z, q.w])

    def odometry_callback(self, msg):
    # Update current state from odometry

        # self.publish_goal_marker()

        self.R = np.array([msg.pose.pose.position.x,
                           msg.pose.pose.position.y,
                           msg.pose.pose.position.z])

        self.quat = np.array([msg.pose.pose.orientation.x,
                              msg.pose.pose.orientation.y,
                              msg.pose.pose.orientation.z,
                              msg.pose.pose.orientation.w])

        rotation_matrix = R.from_quat(self.quat).as_matrix()

        # Initial r_i in the vehicle's body frame
        initial_r_i = np.array([1, 0, 0])

        # Generate r_i in the world frame
        self.r_i = np.dot(rotation_matrix, initial_r_i)

        self.current_lin_vel = np.array([msg.twist.twist.linear.x,
                                         msg.twist.twist.linear.y, 
                                         msg.twist.twist.linear.z])

        self.current_ang_vel = np.array([msg.twist.twist.angular.x, 
                                         msg.twist.twist.angular.y, 
                                         msg.twist.twist.angular.z])

    # Compute desired velocity
        desired_vel = self.compute_des_vel()

    # Integrate to get desired position and orientation
        # desired_pos, desired_orient = self.integrate_desired_state(desired_vel)

        des = TrajectoryPoint()
        des.header.stamp = rospy.Time.now()
        des.header.frame_id = self.inertial_frame_id
        # des.pose.position = geometry_msgs.Vector3(*desired_pos)
        # des.pose.orientation = geometry_msgs.Quaternion(*desired_orient)

        des.velocity.linear.x = desired_vel.linear.x
        des.velocity.linear.y = desired_vel.linear.y
        des.velocity.linear.z = desired_vel.linear.z

        des.velocity.angular.x = desired_vel.angular.x

        # def integrate_desired_state(self, desired_vel):
    # # Calculate the time step based on the current time and the last update
    #     current_time = rospy.Time.now()
    #     dt = (current_time - self.time_last_update).to_sec()
    #     self.time_last_update = current_time  # Update the last update time

    # #TODO:

    # # Integrate linear velocity
    #     self.R += np.array([desired_vel.linear.x,
    #                         desired_vel.linear.y,   
    #                         desired_vel.linear.z])  * dt

    # # Convert angular velocity to a quaternion and integrate
    #     ang_vel = np.array([desired_vel.angular.x,
    #                         desired_vel.angular.y,
    #                         desired_vel.angular.z])
    #     delta_quat = R.from_rotvec(ang_vel * dt).as_quat()
    #     current_quat = R.from_quat(self.desired_orient)
    #     new_quat = R.from_quat(delta_quat) * current_quat
    #     self.desired_orient = new_quat.as_quat()

    #     rospy.loginfo('Integrated Position (R): %s', str(self.R))
    #     rospy.loginfo('Integrated Orientation (desired_orient): %s', str(self.desired_orient))


    #     return self.R, self.desired_orient
        des.velocity.angular.y = desired_vel.angular.y
        des.velocity.angular.z = desired_vel.angular.z

        self.reference_pub.publish(des)

        p = self.vector_to_np(msg.pose.pose.position)
        forward_vel = self.vector_to_np(msg.twist.twist.linear)
        
        ref_vel = [desired_vel.linear.x, desired_vel.linear.y, desired_vel.linear.z]


        q = self.quaternion_to_np(msg.pose.pose.orientation)
        rpy = trans.euler_from_quaternion(q, axes='sxyz')

        e_p =  np.zeros(3)
        abs_pos_error = np.linalg.norm(e_p) 
        abs_vel_error = np.linalg.norm(ref_vel - forward_vel)

        # error_msg = TrajectoryPoint()
        # error_msg.header.stamp = rospy.Time.now()
        # error_msg.header.frame_id = self.inertial_frame_id
        # error_msg.pose.position = geometry_msgs.Vector3(*e_p)
        # error_msg.pose.orientation = geometry_msgs.Quaternion(
        #     *trans.quaternion_multiply(trans.quaternion_inverse(q), desired_orient))
        # error_msg.velocity.linear = geometry_msgs.Vector3(*([desired_vel.linear.x, desired_vel.linear.y, desired_vel.linear.z] - self.vector_to_np(msg.twist.twist.linear)))
        # error_msg.velocity.angular = geometry_msgs.Vector3(*([desired_vel.angular.x, desired_vel.angular.y, desired_vel.angular.z] - self.vector_to_np(msg.twist.twist.angular)))

        pitch_des = -math.atan2(e_p[2], np.linalg.norm(e_p[0:2]))
        pitch_des = max(-self.desired_pitch_limit, min(pitch_des, self.desired_pitch_limit))

        yaw_des = math.atan2(e_p[1], e_p[0])
        yaw_err = self.unwrap_angle(yaw_des - rpy[2])

        # Limit yaw effort
        yaw_err = min(self.yaw_error_limit, max(-self.yaw_error_limit, yaw_err))

        # Roll: P controller to keep roll == 0
        roll_control = self.p_roll * rpy[0]

        # Pitch: P controller to reach desired pitch angle
        pitch_control = self.p_pitch * self.unwrap_angle(pitch_des - rpy[1]) + self.d_pitch * (desired_vel.angular.y - msg.twist.twist.angular.y)

        # Yaw: P controller to reach desired yaw angle
        yaw_control = self.p_yaw * yaw_err + self.d_yaw * (desired_vel.angular.z - msg.twist.twist.angular.z)

        # Limit thrust
        thrust = min(self.max_thrust, self.p_gain_thrust * np.linalg.norm(abs_pos_error) + self.d_gain_thrust * abs_vel_error)
        thrust = max(self.min_thrust, thrust)

        rpy = np.array([roll_control, pitch_control, yaw_control])

        rtf = deepcopy(self.rpy_to_fins)
        if self.inertial_frame_id == 'world_ned':
            rtf[:, 1] *= -1
            rtf[:, 2] *= -1
    
    # Transform orientation command into fin angle setpoints
        fins = rtf.dot(rpy)

        max_angle = max(np.abs(fins))
        if max_angle >= self.max_fin_angle:
            fins = fins * self.max_fin_angle / max_angle

        thrust_force = self.thruster.tam_column * thrust
        self.thruster.publish_command(thrust_force[0])

        cmd = FloatStamped()
        for i in range(self.n_fins):
            cmd.header.stamp = rospy.Time.now()
            cmd.header.frame_id = '%s/fin%d' % (self.namespace, i)
            cmd.data = min(fins[i], self.max_fin_angle)
            cmd.data = max(cmd.data, -self.max_fin_angle)
            self.pub_cmd[i].publish(cmd)

        # self.error_pub.publish(error_msg)

    def compute_des_vel(self):

        norm_R = np.linalg.norm(self.R)
        S = np.dot(self.R / norm_R, self.r_i) + 1 
        u = -self.K_1 * np.tanh(norm_R) * np.sign(np.dot(self.R, self.r_i))

        cross_product = np.cross(self.r_i, self.R / norm_R)
        norm_cross_product = np.linalg.norm(cross_product)

        # vector_to_goal = self.goal - self.R
        # direction_to_goal = vector_to_goal / np.linalg.norm(vector_to_goal)

        # u = -self.K_1 * np.tanh(np.linalg.norm(vector_to_goal)) * np.sign(np.dot(direction_to_goal, self.r_i))

        # Compute angular velocity ('omega') to align the vehicle towards the goal
        # cross_product = np.cross(self.r_i, direction_to_goal)
        # norm_cross_product = np.linalg.norm(cross_product)

        # if norm_cross_product > 0:
        #     omega = (-self.K_2 * np.sign(np.dot(direction_to_goal, self.r_i)) * abs(np.dot(direction_to_goal, self.r_i))**0.5 - (u - u * (np.dot(direction_to_goal, self.r_i)**2))) * cross_product / norm_cross_product**2
        # else:
        #     omega = np.zeros(3)

        if norm_cross_product > 0:
            omega = (-self.K_2 * np.sign(S) * abs(S)**0.5 - (u - u * (np.dot(self.R / norm_R, self.r_i)**2))) * cross_product / norm_cross_product**2 
        else:
            omega = np.zeros(3) 

        rospy.loginfo("Linear vel: %s", str(u))
        rospy.loginfo("Angular vel: %s", str(omega))

        desired_vel = Twist()
        desired_vel.linear.x = u  # Assuming 'u' affects the x-direction
        desired_vel.angular.x = omega[0]
        desired_vel.angular.y = omega[1]
        desired_vel.angular.z = omega[2]

        return desired_vel

    # def integrate_desired_state(self, desired_vel):
    # # Calculate the time step based on the current time and the last update
    #     current_time = rospy.Time.now()
    #     dt = (current_time - self.time_last_update).to_sec()
    #     self.time_last_update = current_time  # Update the last update time

    # #TODO:

    # # Integrate linear velocity
    #     self.R += np.array([desired_vel.linear.x,
    #                         desired_vel.linear.y,   
    #                         desired_vel.linear.z])  * dt

    # # Convert angular velocity to a quaternion and integrate
    #     ang_vel = np.array([desired_vel.angular.x,
    #                         desired_vel.angular.y,
    #                         desired_vel.angular.z])
    #     delta_quat = R.from_rotvec(ang_vel * dt).as_quat()
    #     current_quat = R.from_quat(self.desired_orient)
    #     new_quat = R.from_quat(delta_quat) * current_quat
    #     self.desired_orient = new_quat.as_quat()

    #     rospy.loginfo('Integrated Position (R): %s', str(self.R))
    #     rospy.loginfo('Integrated Orientation (desired_orient): %s', str(self.desired_orient))


    #     return self.R, self.desired_orient

    # def publish_goal_marker(self):
    #     marker = Marker()
    #     marker.header.frame_id = "world"  # Change to your reference frame
    #     marker.header.stamp = rospy.Time.now()
    #     marker.ns = "goal"
    #     marker.id = 0
    #     marker.type = Marker.SPHERE
    #     marker.action = Marker.ADD
    #     marker.pose.position.x = self.goal[0]
    #     marker.pose.position.y = self.goal[1]
    #     marker.pose.position.z = self.goal[2]
    #     marker.pose.orientation.w = 1.0
    #     marker.scale.x = 0.2  # Size of the marker (modify as needed)
    #     marker.scale.y = 0.2
    #     marker.scale.z = 0.2
    #     marker.color = ColorRGBA(1.0, 0.0, 0.0, 1.0)  # Red color

    #     self.marker_pub.publish(marker)    

if __name__ == '__main__':
    controller = IntegratedAUVController()
    rospy.spin()






        