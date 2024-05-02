#!/usr/bin/env python
import rospy
import tf
import numpy as np
from geometry_msgs.msg import Twist, Point
from nav_msgs.msg import Odometry
from scipy.spatial.transform import Rotation as R
import matplotlib.pyplot as plt
from visualization_msgs.msg import Marker
from std_msgs.msg import ColorRGBA
import time

class IntegratedPlanningControlLogger:
    def __init__(self):
        rospy.init_node('integrated_planning_control_logger', anonymous=True)
        self.tf_listener = tf.TransformListener()

        self.sub_odometry = rospy.Subscriber('/rexrov/pose_gt', Odometry, self.odometry_callback)
        self.pub_cmd_vel = rospy.Publisher('/rexrov/cmd_vel', Twist, queue_size=10)

        # Data logging
        self.R_log = []
        self.r_i_log = []
        self.control_input_u_log = []
        self.control_input_omega_log = []
        self.time_log = []

        # Start time
        self.start_time = rospy.get_time()

    def odometry_callback(self, msg):
        try:
            (trans, rot) = self.tf_listener.lookupTransform('/world', '/rexrov/base_link', rospy.Time(0))
            rotation_matrix = R.from_quat(rot).as_matrix()  
            r_i = rotation_matrix[:, 0]
            R = np.array([msg.pose.pose.position.x, msg.pose.pose.position.y, msg.pose.pose.position.z])

            # Log data
            self.R_log.append(R)
            self.r_i_log.append(r_i)
            self.time_log.append(rospy.get_time() - self.start_time)

            
           
            u = 1.0  
            omega = [0.0, 0.0, 0.0]  
            self.control_input_u_log.append(u)
            self.control_input_omega_log.append(omega)
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            rospy.loginfo("TF exception")

    def plot_data(self):
        plt.figure(figsize=(12, 8))

        # Position R over time
        plt.subplot(3, 1, 1)
        plt.plot(self.time_log, [R[0] for R in self.R_log], label='R_x')
        plt.plot(self.time_log, [R[1] for R in self.R_log], label='R_y')
        plt.plot(self.time_log, [R[2] for R in self.R_log], label='R_z')
        plt.xlabel('Time (s)')
        plt.ylabel('Position (m)')
        plt.title('Position Vector R Over Time')
        plt.legend()

        # Direction r_i over time
        plt.subplot(3, 1, 2)
        plt.plot(self.time_log, [r_i[0] for r_i in self.r_i_log], label='r_i_x')
        plt.plot(self.time_log, [r_i[1] for r_i in self.r_i_log], label='r_i_y')
        plt.plot(self.time_log, [r_i[2] for r_i in self.r_i_log], label='r_i_z')
        plt.xlabel('Time (s)')
        plt.ylabel('Direction')
        plt.title('Direction Vector r_i Over Time')
        plt.legend()

        # Control input over time
        plt.subplot(3, 1, 3)
        plt.plot(self.time_log, self.control_input_u_log, label='Surge (u)')
        plt.plot(self.time_log, [omega[2] for omega in self.control_input_omega_log], label='Yaw rate (omega_z)')
        plt.xlabel('Time (s)')
        plt.ylabel('Control input')
        plt.title('Control Input Over Time')
        plt.legend()

        plt.tight_layout()
        plt.show()

if __name__ == '__main__':
    try:
        node = IntegratedPlanningControlLogger()
        rospy.spin()
        node.plot_data()
    except rospy.ROSInterruptException:
        pass
    except KeyboardInterrupt:
        node.plot_data()
