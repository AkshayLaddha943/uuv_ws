#!/usr/bin/env python
import rospy
import tf
import numpy as np
from geometry_msgs.msg import Twist, Point
from nav_msgs.msg import Odometry
from scipy.spatial.transform import Rotation as R
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
from visualization_msgs.msg import Marker
from std_msgs.msg import ColorRGBA

class IntegratedPlanningControl:
    def __init__(self):
        rospy.init_node('integrated_planning_control', anonymous=True)
        self.tf_listener = tf.TransformListener()

        self.sub_odometry = rospy.Subscriber('/rexrov/pose_gt', Odometry, self.odometry_callback)
        self.pub_cmd_vel = rospy.Publisher('/rexrov/cmd_vel', Twist, queue_size=10)
        self.marker_pub = rospy.Publisher('/visual', Marker, queue_size=10)

        self.r_i = np.array([1,0,0])  

        self.K_1 = 1
        self.K_2 = -0.05
        # self.r_i = [1,0,0]
        
        self.commanded_surge = []
        self.actual_surge = []
        self.surge_error = []

        self.commanded_pitch = []
        self.actual_pitch = []
        self.pitch_error = []

        self.commanded_yaw = []
        self.actual_yaw = []
        self.yaw_error = []

        self.fig, self.axs = plt.subplots(6, 1)
        self.axs[0].set_title('Surge')
        self.axs[1].set_title('Pitch Rate')
        self.axs[2].set_title('Yaw Rate')
        self.axs[3].set_title('Surge Error')
        self.axs[4].set_title('Pitch Rate Error')
        self.axs[5].set_title('Yaw Rate Error')

    def update_plot(self, frame):
        self.axs[0].clear()
        self.axs[0].plot(self.commanded_surge, label='Commanded Surge')
        self.axs[0].plot(self.actual_surge, label='Actual Surge')
        self.axs[0].legend()

        self.axs[1].clear()
        self.axs[1].plot(self.commanded_pitch, label='Commanded Pitch Rate')
        self.axs[1].plot(self.actual_pitch, label='Actual Pitch Rate')
        self.axs[1].legend()

        self.axs[2].clear()
        self.axs[2].plot(self.commanded_yaw, label='Commanded Yaw Rate')
        self.axs[2].plot(self.actual_yaw, label='Actual Yaw Rate')
        self.axs[2].legend()

        self.axs[3].clear()
        self.axs[3].plot(self.surge_error, label='Surge Error')
        self.axs[3].legend()

        self.axs[4].clear()
        self.axs[4].plot(self.pitch_error, label='Pitch Rate Error')
        self.axs[4].legend()

        self.axs[5].clear()
        self.axs[5].plot(self.yaw_error, label='Yaw Rate Error')
        self.axs[5].legend()
       

    def odometry_callback(self, msg):
        try:
            
            (trans, rot) = self.tf_listener.lookupTransform('world', 'rexrov/base_link', rospy.Time(0))
            rotation_matrix = R.from_quat(rot).as_matrix()  
            self.r_i = rotation_matrix[:, 0]  
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            rospy.loginfo("TF exception")
        self.R = np.array([msg.pose.pose.position.x, msg.pose.pose.position.y, msg.pose.pose.position.z]) 

        norm_R = np.linalg.norm(self.R) 
        S = np.dot(self.R / norm_R, self.r_i) + 1 
        u = -self.K_1 * np.tanh(norm_R) * np.sign(np.dot(self.R, self.r_i))
                                                                                                                                    
        cross_product = np.cross(self.r_i, self.R / norm_R)
        norm_cross_product = np.linalg.norm(cross_product)

        if norm_cross_product > 0:
            omega = (-self.K_2 * np.sign(S) * abs(S)**0.5 - (u - u * (np.dot(self.R / norm_R, self.r_i)**2))) * cross_product / norm_cross_product**2 #* direction_to_goal_normalized
        else:
            omega = np.zeros(3) 
        
        twist_msg = Twist()
        twist_msg.linear.x = u
        twist_msg.angular.y = omega[1]
        twist_msg.angular.z = omega[2]
        self.pub_cmd_vel.publish(twist_msg)

        self.commanded_surge.append(u)
        self.actual_surge.append(msg.twist.twist.linear.x)
        self.surge_error.append(self.commanded_surge[-1] - self.actual_surge[-1])

        self.commanded_pitch.append(omega[1])
        self.actual_pitch.append(msg.twist.twist.angular.y)
        self.pitch_error.append(self.commanded_pitch[-1] - self.actual_pitch[-1])

        self.commanded_yaw.append(omega[2])
        self.actual_yaw.append(msg.twist.twist.angular.z)
        self.yaw_error.append(self.commanded_yaw[-1] - self.actual_yaw[-1])

        self.publish_vector_marker(self.R, 'R_vector', [1, 0, 0])  # Red for R vector
        self.publish_vector_marker(self.r_i, 'r_i_vector', [0, 1, 0])  

    def publish_vector_marker(self, vector, ns, color):
        marker = Marker()
        marker.header.frame_id = "world"  
        marker.action = marker.ADD
        marker.ns = ns
        marker.id = 0
        marker.scale.x = 0.1  
        marker.scale.y = 0.2  
        marker.scale.z = 0.3  
        marker.color.a = 1.0  
        marker.color.r = color[0]
        marker.color.g = color[1]
        marker.color.b = color[2]
        marker.points.append(Point(0, 0, 0))  # Start point
        marker.points.append(Point(vector[0], vector[1], vector[2]))  
        marker.pose.orientation.x = 0.0
        marker.pose.orientation.y = 0.0
        marker.pose.orientation.z = 0.0
        marker.pose.orientation.w = 1.0

        self.marker_pub.publish(marker)


if __name__ == '__main__':
    try:
        node = IntegratedPlanningControl()
      
        ani = FuncAnimation(node.fig, node.update_plot, interval=100)
        plt.show()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass