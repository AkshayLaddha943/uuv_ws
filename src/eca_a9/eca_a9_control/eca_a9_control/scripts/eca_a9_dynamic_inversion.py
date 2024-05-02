#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Wrench
from nav_msgs.msg import Odometry
from uuv_auv_control_allocator.msg import AUVCommand
import numpy as np

class AUVDynamicInversion:
    def __init__(self):
        rospy.init_node('auv_dynamic_inversion', anonymous=True)        
        rospy.loginfo('dynamic inversion started')
        self.mass = 69.7
        self.Ma = np.array([
            [4, 0,  0,  0,   0,  0],
            [0, 95, 0,  0,   0,  0],
            [0, 0,  75, 0,   0,  0],
            [0, 0,  0,  0.4, 0,  0],
            [0, 0,  0,  0,   27, 0],
            [0, 0,  0,  0,   0,  32]
        ])
        self.linear_damping_forward_speed = np.array([
            [-8, 0,    0,    0,   0,    0],
            [0,  -162, 0,    0,   0,    150],
            [0,  0,    -108, 0,   -100, 0],
            [0,  0,    0,    -13, 0,    0],
            [0,  0,    37,   0,   -20,  0],
            [0,  -34,  0,    0,   0,    -32]
        ])
        self.desired_velocity_vector = np.array([1.0, 0, 0, 0, 0.1, 0.1])  
        
        self.pub = rospy.Publisher('/eca_a9/control_allocation/control_input', AUVCommand, queue_size=10)
        rospy.Subscriber("/eca_a9/pose_gt", Odometry, self.odometry_callback)

        self.error_history = []


    def calculate_wrench(self, current_velocity_vector):
        # Dynamic model parameters
        M = np.eye(6) * self.mass + self.Ma
        D = self.linear_damping_forward_speed
        Cv = np.zeros((6, 6))  
        g_eta = np.zeros(6)   
        
        acc_desired_vector = self.desired_velocity_vector - current_velocity_vector
        
        # Dynamic inversion to calculate tau
        tau = np.dot(M, acc_desired_vector) + np.dot(Cv, current_velocity_vector) + np.dot(D, current_velocity_vector) + g_eta
        rospy.loginfo('tau calculated: ' + str(tau))
        
        # Convert tau to Wrench
        wrench = Wrench()
        wrench.force.x, wrench.force.y, wrench.force.z = tau[0:3]
        wrench.torque.x, wrench.torque.y, wrench.torque.z = tau[3:6]
        
        return wrench

    def odometry_callback(self, msg):
        # Extracting current velocity vector from odometry
        rospy.loginfo('callback function entered')
        current_velocity_vector = np.array([
            msg.twist.twist.linear.x, msg.twist.twist.linear.y, msg.twist.twist.linear.z,
            msg.twist.twist.angular.x, msg.twist.twist.angular.y, msg.twist.twist.angular.z
        ])
        
       
        wrench = self.calculate_wrench(current_velocity_vector)
        
        # Publish AUVCommand
        command_msg = AUVCommand()
        command_msg.header.stamp = rospy.Time.now()
        command_msg.surge_speed = self.desired_velocity_vector[0]  # Assuming surge is the primary interest
        command_msg.command = wrench
        self.pub.publish(command_msg)

        error = self.desired_velocity_vector - current_velocity_vector
        self.error_history.append(error)

    def plot_error_history(self):
        error_array = np.array(self.error_history)
        time_steps = range(len(error_array))
        plt.figure()
        for i in range(6):
            plt.plot(time_steps, error_array[:, i], label=f'Component {i+1}')
        plt.xlabel('Time Step')
        plt.ylabel('Error')
        plt.title('Error over Time')
        plt.legend()
        plt.show()

if __name__ == '__main__':
    try:
        dynamic_inversion = AUVDynamicInversion()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
    except KeyboardInterrupt:
        dynamic_inversion.plot_error_history()

