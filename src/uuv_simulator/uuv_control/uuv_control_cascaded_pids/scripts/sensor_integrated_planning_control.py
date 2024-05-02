#!/usr/bin/env python
import rospy
import tf
import numpy as np
from geometry_msgs.msg import Twist, Point
from nav_msgs.msg import Odometry
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
from scipy.spatial.transform import Rotation as R
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
from visualization_msgs.msg import Marker
from std_msgs.msg import ColorRGBA

class SensorIntegratedPlanningControl:
    def __init__(self):
        rospy.init_node('sensor_integrated_planning_control', anonymous=True)
        self.tf_listener = tf.TransformListener()

        self.goal = np.array([0, 0, 0])
        self.K_1 = 1
        self.K_2 = -0.05
        self.obstacle_detected = False

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

        self.sub_odometry = rospy.Subscriber('/rexrov/pose_gt', Odometry, self.odometry_callback)
        self.sub_point_cloud = rospy.Subscriber('/rexrov/rexrov/rexrov/point_cloud', PointCloud2, self.point_cloud_callback)
        self.pub_cmd_vel = rospy.Publisher('/rexrov/cmd_vel', Twist, queue_size=10)
        self.decision_sphere_pub = rospy.Publisher('/decision_sphere', Marker, queue_size=10)
        self.goal_orientation_vector_pub = rospy.Publisher('/goal_orientation_vector', Marker, queue_size=10)


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
       

    def calculate_Rmax(self, Ls_function, max_sonar_range=5.0):
        if not Ls_function:
            return max_sonar_range, None, None

        angles = np.array(list(Ls_function.keys()))
        R_values = np.array(list(Ls_function.values()))
        R_values = np.nan_to_num(R_values, nan=max_sonar_range)
        epsilon = 1e-8 
        R_calculated = R_values / (2 * np.cos(angles[:, 1]) * np.sin(angles[:, 0]) + epsilon)
        R_calculated = np.clip(R_calculated, 0, max_sonar_range)
        R_calculated = np.nan_to_num(R_calculated, nan=max_sonar_range)
        Rmax = np.nanmin(R_calculated) if np.any(np.isfinite(R_calculated)) else max_sonar_range

   
        self.obstacle_detected = Rmax < max_sonar_range
        return Rmax, angles, R_calculated

    def generate_Ls_function(self, cloud_points):
        points = np.array(cloud_points)
        r = np.sqrt(np.sum(points**2, axis=1))
        phi = np.arctan2(points[:, 1], points[:, 0])
        theta = np.arccos(points[:, 2] / r)

        phi_rounded = np.round(phi, 2)
        theta_rounded = np.round(theta, 2)

        unique_angles, indices = np.unique(np.column_stack((theta_rounded, phi_rounded)), axis=0, return_index=True)
        Ls_values = r[indices]
        Ls_function = dict(zip(map(tuple, unique_angles), Ls_values))

        return Ls_function

    def point_cloud_callback(self, data):
        cloud_points = list(pc2.read_points(data, field_names=("x", "y", "z"), skip_nans=True))
        Ls_function = self.generate_Ls_function(cloud_points)

        rospy.loginfo("Updated Ls function with current sonar data")
        Rmax, angles, R_calculated = self.calculate_Rmax(Ls_function)
        
        if self.obstacle_detected:
            
            center_of_sphere = self.calculate_center_of_sphere(cloud_points, Rmax)
            self.goal = center_of_sphere
            self.publish_decision_sphere_marker(center_of_sphere, Rmax)
        else:
            self.goal = np.array([10, 0, 0])

    def calculate_center_of_sphere(self, cloud_points, Rmax):
        points = np.array(cloud_points)
        distances = np.linalg.norm(points, axis=1)  

        
        boundary_points = points[np.abs(distances - Rmax) < 0.1 * Rmax]  

        if len(boundary_points) > 0:
            
            center = np.mean(boundary_points, axis=0)
        else:
            
            center = np.mean(points, axis=0)

        return center


    def publish_decision_sphere_marker(self, center, Rmax):
        marker = Marker()
        marker.header.frame_id = "world"
        marker.header.stamp = rospy.Time.now()
        marker.type = Marker.SPHERE
        marker.action = Marker.ADD
        marker.pose.position.x = center[0]
        marker.pose.position.y = center[1]
        marker.pose.position.z = center[2]
        marker.pose.orientation.x = 0.0
        marker.pose.orientation.y = 0.0
        marker.pose.orientation.z = 0.0
        marker.pose.orientation.w = 1.0 
        marker.scale.x = Rmax * 2
        marker.scale.y = Rmax * 2
        marker.scale.z = Rmax * 2
        marker.color.a = 0.5
        marker.color.r = 0.0
        marker.color.g = 1.0
        marker.color.b = 0.0
        marker.lifetime = rospy.Duration(0)
        self.decision_sphere_pub.publish(marker)


    def odometry_callback(self, msg):
        try:
            (trans, rot) = self.tf_listener.lookupTransform('/world', '/rexrov/base_link', rospy.Time(0))
            rotation_matrix = R.from_quat(rot).as_matrix()
            r_i = rotation_matrix[:, 0]
            position = np.array(trans)

            # if self.obstacle_detected:
            #     direction_to_goal = self.decision_sphere_center - position
            # else:
            direction_to_goal = position - self.goal #TODO: goal = centre of decision sphere.

            norm_direction = np.linalg.norm(direction_to_goal)
            direction_to_goal_normalized = direction_to_goal / norm_direction if norm_direction > 0 else direction_to_goal
            u = -self.K_1 * np.tanh(norm_direction)
            cross_product = np.cross(r_i, direction_to_goal_normalized)
            omega = cross_product / np.linalg.norm(cross_product) if np.linalg.norm(cross_product) > 0 else np.zeros(3)

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

         
            self.publish_goal_orientation_vector(direction_to_goal, 'goal_vector', [1, 0, 0])
            self.publish_goal_orientation_vector(r_i, 'orientation_vector', [0, 1, 0])


        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            rospy.loginfo("TF exception")

    def publish_goal_orientation_vector(self, vector, ns, color):
        marker = Marker()
        marker.header.frame_id = "world"
        marker.header.stamp = rospy.Time.now()
        marker.type = Marker.ARROW
        marker.action = Marker.ADD
        marker.pose.orientation.x = 0.0
        marker.pose.orientation.y = 0.0
        marker.pose.orientation.z = 0.0
        marker.pose.orientation.w = 1.0
        marker.scale.x = 0.1       
        marker.scale.y = 0.2  
        marker.scale.z = 0.3  
        marker.color.a = 1.0
        marker.color.r = color[0]
        marker.color.g = color[1]
        marker.color.b = color[2]
        marker.points.append(Point(0, 0, 0))
        marker.points.append(Point(vector[0], vector[1], vector[2]))
        marker.ns = ns
        self.goal_orientation_vector_pub.publish(marker)



if __name__ == '__main__':
    try:
        node = SensorIntegratedPlanningControl()
      
        ani = FuncAnimation(node.fig, node.update_plot, interval=100)
        plt.show()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
         