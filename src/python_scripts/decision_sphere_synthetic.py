import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib.animation import FuncAnimation

def generate_synthetic_point_cloud(num_points, radius):
    """
    Generate synthetic point cloud data within a sphere of given radius.
    Points are uniformly distributed within the sphere volume.
    """
    phi = np.random.uniform(0, 2 * np.pi, num_points)
    costheta = np.random.uniform(-1, 1, num_points)
    u = np.random.uniform(0, 1, num_points)
    
    theta = np.arccos(costheta)
    r = radius * np.cbrt(u)
    
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
    epsilon = 1e-8
    R_calculated = abs(R_values / (2 * np.cos(angles[:, 1]) * np.sin(angles[:, 0])) + epsilon)
    R_calculated = np.clip(R_calculated, 0, max_lidar_range)
    R_calculated = np.nan_to_num(R_calculated, nan=max_lidar_range)
    
    Rmax = np.nanmin(R_calculated) if np.any(np.isfinite(R_calculated)) else max_lidar_range
    
    return Rmax, angles, R_calculated

def calculate_all_spheres(cloud_points, num_directions=1000, max_lidar_range=5.0):
    """
    Calculate all possible spheres and their centers along different directions.
    """
    directions = np.random.randn(num_directions, 3)
    directions /= np.linalg.norm(directions, axis=1)[:, np.newaxis]

    spheres = []
    for direction in directions:
        basis = np.eye(3)
        basis[0] = direction
        basis[1] = np.cross(basis[0], np.array([0, 0, 1]))
        if np.linalg.norm(basis[1]) < 1e-6:
            basis[1] = np.cross(basis[0], np.array([0, 1, 0]))
        basis[1] /= np.linalg.norm(basis[1])
        basis[2] = np.cross(basis[0], basis[1])

        rotated_cloud = np.dot(cloud_points, basis.T)
        Ls_function = generate_Ls_function(rotated_cloud)
        Rmax, angles, _ = calculate_Rmax(Ls_function, max_lidar_range)
        spheres.append((Rmax, direction * Rmax))

    return spheres

def visualize_all(cloud_points, spheres, goal_point, robot_point):
    """
    Visualize centers of all spheres and highlight the best-fit sphere.
    """
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    ax.scatter(cloud_points[:, 0], cloud_points[:, 1], cloud_points[:, 2], c='b', marker='o', s=10, label='Cloud Points')
    ax.scatter(robot_point[0], robot_point[1], robot_point[2], c='black', marker='o', s=80, label='Robot')
    ax.scatter(goal_point[0], goal_point[1], goal_point[2], c='purple', marker='x', s=100, label='Goal Point')

    best_sphere_index = np.argmin([np.linalg.norm(center - goal_point) for _, center in spheres])
    best_sphere = spheres[best_sphere_index]

    centers = np.array([center for _, center in spheres])
    ax.scatter(centers[:, 0], centers[:, 1], centers[:, 2], c='r', marker='o', s=30, label='Sphere Centers')

    Rmax, center = best_sphere
    u = np.linspace(0, 2 * np.pi, 100)
    v = np.linspace(0, np.pi, 100)
    x = Rmax * np.outer(np.cos(u), np.sin(v)) + center[0]
    y = Rmax * np.outer(np.sin(u), np.sin(v)) + center[1]
    z = Rmax * np.outer(np.ones(np.size(u)), np.cos(v)) + center[2]
    ax.plot_surface(x, y, z, color='g', alpha=0.2)
    ax.scatter(center[0], center[1], center[2], color='y', s=50, label='Best-Fit Sphere Center')

    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    ax.legend()
    plt.show()

def visualize_best_fit_sphere(cloud_points, best_sphere, goal_point, robot_point):
    """
    Visualize only the best-fit sphere, the robot, the point cloud, and the goal point.
    """
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    ax.scatter(cloud_points[:, 0], cloud_points[:, 1], cloud_points[:, 2], c='b', marker='o', s=10, label='Cloud Points')
    ax.scatter(robot_point[0], robot_point[1], robot_point[2], c='black', marker='o', s=80, label='Robot')
    ax.scatter(goal_point[0], goal_point[1], goal_point[2], c='purple', marker='x', s=100, label='Goal Point')

    Rmax, center = best_sphere
    u = np.linspace(0, 2 * np.pi, 100)
    v = np.linspace(0, np.pi, 100)
    x = Rmax * np.outer(np.cos(u), np.sin(v)) + center[0]
    y = Rmax * np.outer(np.sin(u), np.sin(v)) + center[1]
    z = Rmax * np.outer(np.ones(np.size(u)), np.cos(v)) + center[2]
    ax.plot_surface(x, y, z, color='g', alpha=0.2)
    ax.scatter(center[0], center[1], center[2], color='y', s=50, label='Best-Fit Sphere Center')

    tolerance = 1e-2
    distances = np.linalg.norm(cloud_points - center, axis=1)
    on_sphere = np.isclose(distances, Rmax, atol=tolerance)

    ax.scatter(cloud_points[on_sphere, 0], cloud_points[on_sphere, 1], cloud_points[on_sphere, 2], color='orange', s=60, label='Points on Sphere')

    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    ax.legend()
    plt.show()

    if np.any(on_sphere):
        print("Points on sphere:", cloud_points[on_sphere])

def main():
    cloud_points = generate_synthetic_point_cloud(num_points=100, radius=5)
    spheres = calculate_all_spheres(cloud_points, num_directions=100, max_lidar_range=5.0)
    goal_point = np.array([5, 1, 12])
    robot_point = np.array([0, 0, 0])

    best_sphere_index = np.argmin([np.linalg.norm(center - goal_point) for _, center in spheres])
    best_sphere = spheres[best_sphere_index]

    visualize_all(cloud_points, spheres, goal_point, robot_point)
    visualize_best_fit_sphere(cloud_points, best_sphere, goal_point, robot_point)

if __name__ == '__main__':
    main()



