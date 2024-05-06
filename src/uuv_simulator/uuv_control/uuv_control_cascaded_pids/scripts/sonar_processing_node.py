#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
from visualization_msgs.msg import Marker
import numpy as np

def calculate_Rmax(Ls_function, max_sonar_range=5.0): #TODO:Try replacing max_sonar_range with maximum distance of object recorded from pcl
    if not Ls_function:
        return max_sonar_range, None, None

    angles = np.array(list(Ls_function.keys()))
    R_values = np.array(list(Ls_function.values()))
   
    R_values = np.nan_to_num(R_values, nan=max_sonar_range)

    # Calculate R for each angle, handling NaNs and clipping the values
    R_calculated = R_values / (2 * np.cos(angles[:, 1]) * np.sin(angles[:, 0])) #TODO:angles (directions in which we are looking at centres) to be subtracted by <parameter>
    R_calculated = np.clip(R_calculated, 0, max_sonar_range)

    R_calculated = np.nan_to_num(R_calculated, nan=max_sonar_range)

   
    Rmax = np.nanmin(R_calculated) if np.any(np.isfinite(R_calculated)) else max_sonar_range

    return Rmax, angles, R_calculated

def generate_Ls_function(cloud_points):
    points = np.array(cloud_points)
    r = np.sqrt(np.sum(points**2, axis=1)) #sums squared values of x,z,z across the rows (for each point) to get Euclidean distance
    phi = np.arctan2(points[:, 1], points[:, 0]) #calculates angles (radians) b/w x and y coordinates of each point and +ve x axis 
    theta = np.arccos(points[:, 2] / r) # calculates angles (radians) from the positive z-axis to x and y cooridnates of each point

    phi_rounded = np.round(phi, 2)
    theta_rounded = np.round(theta, 2)

    unique_angles, indices = np.unique(np.column_stack((theta_rounded, phi_rounded)), axis=0, return_index=True)
    #unique angles finds theta and phi pairs, and indices is a list of where those pairs were found in the array
    Ls_values = r[indices]
    #for each unique theta and phi pair, find r

    Ls_function = dict(zip(map(tuple, unique_angles), Ls_values))
    #Look up distance by providing an angle pair
    return Ls_function

def sonar_callback(data, publishers):
    sphere_publisher, center_publisher = publishers
    cloud_points = list(pc2.read_points(data, field_names=("x", "y", "z"), skip_nans=True))
    Ls_function = generate_Ls_function(cloud_points)

    rospy.loginfo("Updated Ls function with current sonar data")
    
    Rmax, angles, R_calculated = calculate_Rmax(Ls_function)
    publish_decision_sphere_marker(sphere_publisher, center_publisher, Rmax)

def publish_decision_sphere_marker(sphere_publisher, center_publisher, Rmax):
    
    sphere_marker = Marker()
    sphere_marker.header.frame_id = "rexrov_forward_sonar_optical_link"
    sphere_marker.type = Marker.SPHERE
    sphere_marker.action = Marker.ADD
    sphere_marker.scale.x = Rmax * 2
    sphere_marker.scale.y = Rmax * 2
    sphere_marker.scale.z = Rmax * 2
    sphere_marker.color.a = 0.5
    sphere_marker.color.r = 0.0
    sphere_marker.color.g = 1.0
    sphere_marker.color.b = 0.0
    sphere_marker.pose.orientation.w = 1.0
    sphere_marker.pose.position.x = Rmax
    sphere_marker.pose.position.y = 0.0
    sphere_marker.pose.position.z = 0.0

   
    center_marker = Marker()
    center_marker.header.frame_id = "rexrov_forward_sonar_optical_link"
    center_marker.type = Marker.SPHERE
    center_marker.action = Marker.ADD
    center_marker.scale.x = 0.1  
    center_marker.scale.y = 0.1
    center_marker.scale.z = 0.1
    center_marker.color.a = 1.0
    center_marker.color.r = 1.0
    center_marker.color.g = 0.0
    center_marker.color.b = 0.0
    center_marker.pose.orientation.w = 1.0
    center_marker.pose.position.x = Rmax
    center_marker.pose.position.y = 0.0
    center_marker.pose.position.z = 0.0
   
    sphere_publisher.publish(sphere_marker)
    center_publisher.publish(center_marker)

def main():
    rospy.init_node('sonar_processing_node', anonymous=True)
    sphere_publisher = rospy.Publisher('/decision_sphere', Marker, queue_size=10)
    center_publisher = rospy.Publisher('/decision_center', Marker, queue_size=10)
    rospy.Subscriber('/rexrov/rexrov/rexrov/point_cloud', PointCloud2, sonar_callback, callback_args=(sphere_publisher, center_publisher))
    rospy.spin()

if __name__ == '__main__':
    main()

