#!/usr/bin/env python3

import math
import numpy as np
import rospy
import geometry_msgs.msg as geometry_msgs
from geometry_msgs.msg import Vector3, Twist  
from std_msgs.msg import Float64  
import uuv_control_msgs.msg as uuv_control_msgs
import tf
import tf.transformations as trans
from nav_msgs.msg import Odometry
from uuv_auv_control_allocator.msg import AUVCommand
from uuv_control_msgs.srv import *
from scipy.spatial.transform import Rotation as R
from visualization_msgs.msg import Marker
import matplotlib.pyplot as plt
from copy import deepcopy


# class PIDController:
#     _LABEL = 'IntegratedPlanningControl'

class AUVController:
    def __init__(self):
        rospy.init_node('integrated_planning_control')
        rospy.loginfo('Hello, this is IPC')

        self.odom_sub = rospy.Subscriber('/eca_a9/pose_gt', Odometry, self.odom_callback)
        self.goal_marker_pub = rospy.Publisher('/goal_marker', Marker, queue_size=10)
        # self.u_pub = rospy.Publisher('/eca_a9/u', Float64, queue_size=10)
        # self.omega_pub = rospy.Publisher('/eca_a9/omega', Vector3, queue_size=10)
        self.des_vel_pub = rospy.Publisher('desired_velocity', Twist, queue_size=10)

        # self.command_pub = rospy.Publisher('/eca_a9/control_allocation/control_input', AUVCommand, queue_size=10)

       
        # self.pid_lin = PIDController(np.array([1, 1, 1]), np.array([0, 0, 0]), np.array([0, 0, 0]), 0.1)
        # self.pid_ang = PIDController(np.array([1, 1, 1]), np.array([0, 0, 0]), np.array([0, 0, 0]), 0.1)

        self.K_1 = 1
        self.K_2 = 1
        self.R = np.array([1,1,1])
        self.r_i = np.array([0, 0, 0])  
        self.current_lin_vel = np.zeros(3)
        self.current_ang_vel = np.zeros(3)
        self.error_lin_list = []       
        self.error_ang_list = []
        self.goal = np.array([20, 0, -20])      

    def odom_callback(self, msg):
       
        self.R = np.array([msg.pose.pose.position.x, msg.pose.pose.position.y, msg.pose.pose.position.z])
        self.quat = np.array([msg.pose.pose.orientation.x, msg.pose.pose.orientation.y, msg.pose.pose.orientation.z, msg.pose.pose.orientation.w])
        # Convert quaternion to rotation matrix
        rotation_matrix = R.from_quat(self.quat).as_matrix()

        # Initial r_i in the vehicle's body frame
        initial_r_i = np.array([1, 0, 0])

        # Generate r_i in the world frame
        self.r_i = np.dot(rotation_matrix, initial_r_i)

        self.current_lin_vel = np.array([msg.twist.twist.linear.x, msg.twist.twist.linear.y, msg.twist.twist.linear.z])
        self.current_ang_vel = np.array([msg.twist.twist.angular.x, msg.twist.twist.angular.y, msg.twist.twist.angular.z])

    def compute_control(self):
          
            # print("Executing compute_control method")
            norm_R = np.linalg.norm(self.R)
            S = np.dot(self.R / norm_R, self.r_i) + 1 
            u = -self.K_1 * np.tanh(norm_R) * np.sign(np.dot(self.R, self.r_i))
           
            cross_product = np.cross(self.r_i, self.R / norm_R)
            norm_cross_product = np.linalg.norm(cross_product)


            if norm_cross_product > 0:
                omega = (-self.K_2 * np.sign(S) * abs(S)**0.5 - (u - u * (np.dot(self.R / norm_R, self.r_i)**2))) * cross_product / norm_cross_product**2 #* direction_to_goal_normalized
            else:
                omega = np.zeros(3) 

            desired_vel = Twist()
            desired_vel.linear.x = u  # Assuming 'u' affects the x-direction
            desired_vel.angular.x = omega[0]
            desired_vel.angular.y = omega[1]
            desired_vel.angular.z = omega[2]

            return desired_vel

    def run(self):
        rate = rospy.Rate(10)  # 10 Hz
        while not rospy.is_shutdown():
            desired_vel = self.compute_control()
            self.des_vel_pub.publish(desired_vel)
            rate.sleep()


if __name__ == '__main__':
    print('IntegratedPlanningControl')
    rospy.init_node('integrated_planning_control')
    try:
        node = AUVController()
        node.run()
        rospy.spin()
    except rospy.ROSInterruptException:
           print('caught exception')
    print('exiting')

        
       



