#!/usr/bin/env python3
import matplotlib.pyplot as plt
import numpy as np
import rospy
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
from mpl_toolkits.mplot3d import Axes3D

global xdata, ydata, zdata, line, cloud

def callback(msg):
    global cloud
    cloud = msg

def main_live_plotter():
    rospy.init_node('Live_Plotter_3D')
    global xdata, ydata, zdata, line, cloud
    sub = rospy.Subscriber('/rexrov/sl3_points', PointCloud2, callback)

    fig = plt.figure(figsize=(10, 10))
    ax = fig.add_subplot(111, projection='3d')

    xdata, ydata, zdata = [], [], []

    while not rospy.is_shutdown():
        plt.ion()
        plt.show()
        plt.pause(0.1)
        ax.clear()

        if cloud:
            gen = pc2.read_points(cloud, skip_nans=True, field_names=("x", "y", "z"))
            points = list(gen)
            if points:  
                xdata, ydata, zdata = zip(*points)
                ax.scatter(xdata, ydata, zdata)
                
                plt.draw()
            else:
                print("No points to plot.")
if __name__ == '__main__':
    try:
        main_live_plotter()
    except rospy.ROSInterruptException:
        pass
