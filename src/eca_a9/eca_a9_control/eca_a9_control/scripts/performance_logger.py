#!/usr/bin/env python3
import rospy
import csv
import os

from geometry_msgs.msg import WrenchStamped
from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped
from std_msgs.msg import String
from std_msgs.msg import Header
from geometry_msgs.msg import Pose, Twist, Accel
from uuv_control_msgs.msg import TrajectoryPoint

class TopicLogger:

    def __init__(self, topic, msg_type, file_path):

        self.file_path = file_path
        try:
            self.file = open(self.file_path, 'w')
            self.writer = csv.writer(self.file)
        except IOError as e:
            rospy.logerr("Could not open file {}: {}".format(self.file_path, e))
            return
    
        if msg_type == "geometry_msgs/WrenchStamped":
            self.headers = ["timestamp", "force_x", "force_y", "force_z", "torque_x", "torque_y", "torque_z"]
            self.subscriber = rospy.Subscriber(topic, WrenchStamped, self.callback_wrench_stamped)
        elif msg_type == "uuv_gazebo_ros_plugins_msgs/FloatStamped":
            self.headers = ["timestamp", "data"]
            self.subscriber = rospy.Subscriber(topic, FloatStamped, self.callback_float_stamped)
        # elif msg_type == "std_msgs/String":
        #     self.headers = ["timestamp", "data"]
        #     self.subscriber = rospy.Subscriber(topic, String, self.callback_string)
        elif msg_type == "uuv_control_msgs/TrajectoryPoint":
            self.headers = [
            "timestamp", "pos_x", "pos_y", "pos_z", "orient_x", "orient_y", "orient_z", "orient_w", 
            "lin_vel_x", "lin_vel_y", "lin_vel_z", "ang_vel_x", "ang_vel_y", "ang_vel_z",
            "lin_acc_x", "lin_acc_y", "lin_acc_z", "ang_acc_x", "ang_acc_y", "ang_acc_z"
            ]
            self.subscriber = rospy.Subscriber(topic, TrajectoryPoint, self.callback_trajectory_point)
        else:
            rospy.logerr("Unsupported message type for topic {}".format(topic))
        self.writer.writerow(self.headers) 
        return

        

    def callback_trajectory_point(self, msg):
        data = [
        msg.header.stamp.to_sec(), 
        msg.pose.position.x, msg.pose.position.y, msg.pose.position.z,
        msg.pose.orientation.x, msg.pose.orientation.y, msg.pose.orientation.z, msg.pose.orientation.w,
        msg.velocity.linear.x, msg.velocity.linear.y, msg.velocity.linear.z,
        msg.velocity.angular.x, msg.velocity.angular.y, msg.velocity.angular.z,
        msg.acceleration.linear.x, msg.acceleration.linear.y, msg.acceleration.linear.z,
        msg.acceleration.angular.x, msg.acceleration.angular.y, msg.acceleration.angular.z
        ]

        self.writer.writerow(data)
        # rospy.loginfo("Received data for topic: Error")

    def callback_wrench_stamped(self, msg):
        data = [msg.header.stamp.to_sec(), msg.wrench.force.x, msg.wrench.force.y, msg.wrench.force.z, msg.wrench.torque.x, msg.wrench.torque.y, msg.wrench.torque.z]
        self.writer.writerow(data)
        # rospy.loginfo("Received data for topic: WrenchStamped")

    def callback_float_stamped(self, msg):
        data = [msg.header.stamp.to_sec(), msg.data]
        self.writer.writerow(data)
        # rospy.loginfo("Received data for topic: FloatStamped")

    # def callback_string(self, msg):
    #     data = [rospy.get_time(), msg.data]
    #     self.writer.writerow(data)
    #     rospy.loginfo("Received data for topic: String")

def main():
    rospy.init_node('performance_logger')

    topics_files_and_types = [
        ("/eca_a9/dp_controller/error", "uuv_control_msgs/TrajectoryPoint", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/error1.csv"),
        ("/eca_a9/fins/0/input", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin0_input1.csv"),
        ("/eca_a9/fins/0/output", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin0_output1.csv"),
        ("/eca_a9/fins/0/wrench_topic", "geometry_msgs/WrenchStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin0_wrench1.csv"),
        ("/eca_a9/fins/1/input", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin1_input1.csv"),
        ("/eca_a9/fins/1/output", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin1_output1.csv"),
        ("/eca_a9/fins/1/wrench_topic", "geometry_msgs/WrenchStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin1_wrench1.csv"),
        ("/eca_a9/fins/2/input", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin2_input1.csv"),
        ("/eca_a9/fins/2/output", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin2_output1.csv"),
        ("/eca_a9/fins/2/wrench_topic", "geometry_msgs/WrenchStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin2_wrench1.csv"),
        ("/eca_a9/fins/3/input", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin3_input1.csv"),
        ("/eca_a9/fins/3/output", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin3_output1.csv"),
        ("/eca_a9/fins/3/wrench_topic", "geometry_msgs/WrenchStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/fin3_wrench1.csv"),
        ("/eca_a9/thrusters/0/input", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/thruster_input1.csv"),
        ("/eca_a9/thrusters/0/thrust", "uuv_gazebo_ros_plugins_msgs/FloatStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/thrust1.csv"),
        ("/eca_a9/thrusters/0/thrust_wrench", "geometry_msgs/WrenchStamped", "~/uuv_performance/Non-Model_based_SMC/Helical_N3/H3_Test/Iteration2/thrust_wrench1.csv")
    ]

    loggers = []

    for topic, msg_type, file_path in topics_files_and_types:
        expanded_path = os.path.expanduser(file_path)
        loggers.append(TopicLogger(topic, msg_type, expanded_path))

    rospy.spin()
    rospy.on_shutdown(shutdown)

def shutdown():
    self.file.close()
    for logger in loggers:
        logger.shutdown()
    

if __name__ == '__main__':
    main()
