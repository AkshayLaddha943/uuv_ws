#!/usr/bin/env python3
import rospy
import tf2_ros
import tf_conversions
import geometry_msgs.msg
from nav_msgs.msg import Odometry

class Localizer:
    def __init__(self):
        rospy.init_node('localizer_node', anonymous=True)
        
        # The TF2 broadcaster
        self.br = tf2_ros.TransformBroadcaster()
        
        # Subscribe to the odometry data topic
        self.odom_sub = rospy.Subscriber("/eca_a9/pose_gt", Odometry, self.odom_callback)
        
    def odom_callback(self, data):
        # Create a TransformStamped message to update the robot's pose
        t = geometry_msgs.msg.TransformStamped()

        t.header.stamp = data.header.stamp  # Use the timestamp from the odometry data
        t.header.frame_id = "map"
        t.child_frame_id = data.child_frame_id  # Or set to your vehicle's frame id

        # Set the pose (position + orientation) from the odometry data
        t.transform.translation.x = data.pose.pose.position.x
        t.transform.translation.y = data.pose.pose.position.y
        t.transform.translation.z = data.pose.pose.position.z
        t.transform.rotation = data.pose.pose.orientation

        # Broadcast the transform
        self.br.sendTransform(t)

def main():
    localizer = Localizer()
    rospy.spin()

if __name__ == '__main__':
    main()
