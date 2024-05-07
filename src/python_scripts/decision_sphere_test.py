import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

def generate_synthetic_point_cloud(num_points=100, radius=10.0):
    """
    Generate synthetic point cloud data within a sphere of given radius.
    Points are uniformly distributed within the sphere volume.
    """
    # Random points in spherical coordinates
    phi = np.random.uniform(0, 2 * np.pi, num_points)
    costheta = np.random.uniform(-1, 1, num_points)
    u = np.random.uniform(0, 1, num_points)
    
    theta = np.arccos(costheta)
    r = radius * np.cbrt(u)  # Cube root to ensure uniform distribution within the sphere
    
    # Convert to Cartesian coordinates
    x = r * np.sin(theta) * np.cos(phi)
    y = r * np.sin(theta) * np.sin(phi)
    z = r * np.cos(theta)
    
    return np.column_stack((x, y, z))

def generate_Ls_function(cloud_points):
    """
    Generate Ls function from a set of cloud points.
    """
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

def calculate_Rmax(Ls_function, max_lidar_range=5.0):
    """
    Calculate the maximum radius Rmax for the decision sphere.
    """
    if not Ls_function:
        return max_lidar_range, None, None
    
    angles = np.array(list(Ls_function.keys()))
    R_values = np.array(list(Ls_function.values()))
    
    R_values = np.nan_to_num(R_values, nan=max_lidar_range)
    R_calculated = abs(R_values / (2 * np.cos(angles[:, 1]-np.pi/4) * np.sin(angles[:, 0])))
    R_calculated = np.clip(R_calculated, 0, max_lidar_range)
    R_calculated = np.nan_to_num(R_calculated, nan=max_lidar_range)
    
    Rmax = np.nanmin(R_calculated) if np.any(np.isfinite(R_calculated)) else max_lidar_range
    
    return Rmax, angles, R_calculated

def visualize(points, Rmax, direction_vector=np.array([1, 0, 0])):
    """
    Visualize the point cloud and the decision sphere with the robot at the boundary without the direction vector.
    """
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    
    # Scatter plot for points
    ax.scatter(points[:, 0], points[:, 1], points[:, 2], c='b', marker='o', s=10)  # smaller point size for clarity
    
    # Sphere for Rmax
    u = np.linspace(0, 2 * np.pi, 100)
    v = np.linspace(0, np.pi, 100)
    x = Rmax * np.outer(np.cos(u), np.sin(v))
    y = Rmax * np.outer(np.sin(u), np.sin(v))
    z = Rmax * np.outer(np.ones(np.size(u)), np.cos(v))
    ax.plot_surface(x, y, z, color='r', alpha=0.1)  # increased transparency
    
    # Robot at the boundary
    robot_position = Rmax * direction_vector / np.linalg.norm(direction_vector)
    ax.scatter(robot_position[0], robot_position[1], robot_position[2], color='g', s=50, label='Robot')  # larger size for visibility
    
    # Center of the sphere
    ax.scatter(0, 0, 0, color='r', marker='x', s=100, label='Center')  # red 'X' for the center

    ax.set_xlabel('X Label')
    ax.set_ylabel('Y Label')
    ax.set_zlabel('Z Label')
    ax.legend()

    plt.show()


cloud_points =  generate_synthetic_point_cloud()

Ls_function = generate_Ls_function(cloud_points)
Rmax, angles, R_calculated = calculate_Rmax(Ls_function) 
direction_vector = np.array([1, 0, 0 ])

visualize(cloud_points, Rmax, direction_vector)

if __name__ == '__main__':
    main()
