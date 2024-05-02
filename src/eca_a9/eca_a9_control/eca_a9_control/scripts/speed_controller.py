#!/usr/bin/env python3
import rospy
import numpy as np
from geometry_msgs.msg import Twist
from std_msgs.msg import Float64
from uuv_gazebo_ros_plugins_msgs.msg import FloatStamped


class ControlAllocator:
    def __init__(self):
        # Initialize ROS node
        rospy.init_node('control_allocator')
        rospy.loginfo('Hello, this is control allocation')

        # Subscribers and Publishers
        self.velocity_sub = rospy.Subscriber('/desired_velocity', Twist, self.velocity_callback)
        self.thruster_pub = rospy.Publisher('/eca_a9/thrusters/0/input', FloatStamped, queue_size=10)
        self.fin_pubs = [rospy.Publisher('/eca_a9/fins/{}/input'.format(i), FloatStamped, queue_size=10) for i in range(4)]

        # Vehicle properties
        self.mass = 69.7  # Mass in kg
        self.inertia = np.array([0.6, 30.0, 35.0])  # Inertia in kg*m^2 (Ixx, Iyy, Izz)

        # Actuator positions (x, y, z) relative to CoG and orientations (roll, pitch, yaw)
        self.fin_positions = np.array([
            [-0.70777, -0.07876, 0.078586],
            [-0.70777, -0.07876, -0.078586],
            [-0.70777, 0.07876, -0.078586],
            [-0.70777, 0.07876, 0.078586]
        ])
        self.fin_orientations = np.array([
            [0.7904, -0.0998, -0.1003],
            [2.3512, 0.0998, -0.1003],
            [-2.3512, 0.0998, 0.1003],
            [-0.7904, -0.0998, 0.1003]
        ])
        self.thruster_position = np.array([-0.9676, 0, 0])  # Thruster position (x, y, z)

        # Control allocation coefficients (to be adjusted based on actual dynamics and response)
        self.thruster_coefficient = 1  # Thruster force coefficient
        self.fin_coefficients = np.array([1.0, 1.0, 1.0, 1.0])  # Fin control coefficients

    def velocity_callback(self, msg):
        # Extract desired linear and angular velocities
        u = msg.linear.x
        omega = np.array([msg.angular.x, msg.angular.y, msg.angular.z])

        # Compute thruster and fin commands
        thruster_cmd = self.compute_thruster_command(u)
        fin_cmds = self.compute_fin_commands(omega)

        # Create FloatStamped message for thruster
        thruster_msg = FloatStamped()
        thruster_msg.header.stamp = rospy.Time.now()
        thruster_msg.data = thruster_cmd

        # Create FloatStamped messages for fins
        fin_msgs = [FloatStamped(header=thruster_msg.header, data=cmd) for cmd in fin_cmds]

        # Publish commands
        self.thruster_pub.publish(thruster_msg)
        for i, fin_msg in enumerate(fin_msgs):
            self.fin_pubs[i].publish(fin_msg)

            
    def compute_thruster_command(self, u):
        # Basic proportional control for the thruster based on desired linear velocity
        return u * self.thruster_coefficient

    def compute_fin_commands(self, omega):
        # Basic proportional control for fins based on desired angular velocity
        # This part can be further enhanced with a more sophisticated control strategy
        fin_cmds = []
        for i in range(4):
            fin_cmd = np.dot(self.fin_orientations[i], omega) * self.fin_coefficients[i]
            fin_cmds.append(fin_cmd)
        return fin_cmds

if __name__ == '__main__':
    try:
        control_allocator = ControlAllocator()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
