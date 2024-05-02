#!/usr/bin/env python
import rospy
import tf2_ros
import tf_conversions
import geometry_msgs.msg
from nav_msgs.msg import Odometry

def odometry_callback(msg):
    # Create a TransformStamped message
    transform = geometry_msgs.msg.TransformStamped()

    transform.header.stamp = rospy.Time.now()
    transform.header.frame_id = "odom"
    transform.child_frame_id = "eca_a9/base_footprint"

    # Set the transform positions to the odometry position
    transform.transform.translation.x = msg.pose.pose.position.x
    transform.transform.translation.y = msg.pose.pose.position.y
    transform.transform.translation.z = msg.pose.pose.position.z

    # Set the transform orientations to the odometry orientation
    transform.transform.rotation = msg.pose.pose.orientation

    # Broadcast the transform
    br.sendTransform(transform)

if __name__ == '__main__':
    rospy.init_node('odom_to_base_footprint_broadcaster')

    # Transform broadcaster
    br = tf2_ros.TransformBroadcaster()

    # Subscribe to the odometry topic
    rospy.Subscriber('/eca_a9/pose_gt', Odometry, odometry_callback)

    # Spin to keep the script for exiting
    rospy.spin()
