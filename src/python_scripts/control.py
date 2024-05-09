import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.animation as animation
import warnings

warnings.filterwarnings("ignore", category=RuntimeWarning)

# Function to generate a synthetic point cloud
def generate_synthetic_point_cloud(num_points, radius):
    phi = np.random.uniform(0, 2 * np.pi, num_points)
    costheta = np.random.uniform(-1, 1, num_points)
    u = np.random.uniform(0, 1, num_points)
    
    theta = np.arccos(costheta)
    r = radius * np.cbrt(u)
    
    x = r * np.sin(theta) * np.cos(phi)
    y = r * np.sin(theta) * np.sin(phi)
    z = r * np.cos(theta)
    
    return np.column_stack((x, y, z))

# Function to generate Ls function from cloud points
def generate_Ls_function(cloud_points):
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

# Function to calculate Rmax from Ls function
def calculate_Rmax(Ls_function, max_lidar_range=5.0):
    if not Ls_function:
        return max_lidar_range, None, None
    
    angles = np.array(list(Ls_function.keys()))
    R_values = np.array(list(Ls_function.values()))
    
    R_values = np.nan_to_num(R_values, nan=max_lidar_range)
    R_calculated = np.abs(R_values / (2 * np.cos(angles[:, 1]) * np.sin(angles[:, 0])))
    R_calculated = np.clip(R_calculated, 0, max_lidar_range)
    
    Rmax = np.nanmin(R_calculated) if np.any(np.isfinite(R_calculated)) else max_lidar_range
    
    return Rmax, angles, R_calculated

# Function to calculate all possible spheres and their centers
def calculate_all_spheres(cloud_points, num_directions=1000, max_lidar_range=5.0):
    directions = np.random.randn(num_directions, 3)  # Picks random directions
    directions /= np.linalg.norm(directions, axis=1)[:, np.newaxis]  # Normalizes each direction

    spheres = []
    for direction in directions:
        basis = np.eye(3)
        basis[0] = direction
        basis[1] = np.cross(basis[0], np.array([0, 0, 1]))  # 2nd basis = 1st basis X z axis
        if np.linalg.norm(basis[1]) < 1e-6:  # If 2nd basis is almost parallel to z axis, choose 2nd basis = 1st basis X y axis
            basis[1] = np.cross(basis[0], np.array([0, 1, 0]))
        basis[1] /= np.linalg.norm(basis[1])
        basis[2] = np.cross(basis[0], basis[1])

        # Calculate Rmax for each direction considered
        rotated_cloud = np.dot(cloud_points, basis.T)
        Ls_function = generate_Ls_function(rotated_cloud)
        Rmax, _, _ = calculate_Rmax(Ls_function, max_lidar_range)
        spheres.append((Rmax, direction * Rmax))

    return spheres

# Function to find the best decision sphere
def find_best_sphere(cloud_points, robot_point):
    spheres = calculate_all_spheres(cloud_points, num_directions=100, max_lidar_range=5.0)
    best_sphere_index = np.argmin([np.linalg.norm(center - robot_point) for _, center in spheres])
    best_sphere = spheres[best_sphere_index]
    return best_sphere

# Function to visualize the best-fit sphere
def visualize_best_fit_sphere(ax, Rmax, center):
    u = np.linspace(0, 2 * np.pi, 100)
    v = np.linspace(0, np.pi, 100)
    x = Rmax * np.outer(np.cos(u), np.sin(v)) + center[0]
    y = Rmax * np.outer(np.sin(u), np.sin(v)) + center[1]
    z = Rmax * np.outer(np.ones(np.size(u)), np.cos(v)) + center[2]
    return ax.plot_surface(x, y, z, color='g', alpha=0.2)

# Parameters
N_samples = 16000
del_T = 0.001
cloud_points = generate_synthetic_point_cloud(num_points=500, radius=20)
goal_point = np.array([5, 1, 12])
robot_point = np.array([0, 0, 0])

# Initial best sphere
best_sphere = find_best_sphere(cloud_points, robot_point)
best_sphere_center = best_sphere[1]
Rmax = best_sphere[0]

# Initial state
R = np.zeros((3, N_samples))
r_i = np.zeros((3, N_samples))
robot_position = np.zeros((3, N_samples))

R[:, 0] = best_sphere_center - robot_point
r_i[:, 0] = np.array([-1, 0, 0])
robot_position[:, 0] = robot_point

K_1 = 1
K_2 = 1

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.set_xlim([-20, 20])
ax.set_ylim([-20, 20])
ax.set_zlim([-20, 20])
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.grid()

# Add visualization of the point cloud, goal, robot, and the initial best decision sphere
cloud_plot = ax.scatter(cloud_points[:, 0], cloud_points[:, 1], cloud_points[:, 2], c='b', marker='o', s=10, label='Cloud Points')
robot_plot_point = ax.scatter(robot_point[0], robot_point[1], robot_point[2], c='black', marker='o', s=80, label='Robot')
goal_plot = ax.scatter(goal_point[0], goal_point[1], goal_point[2], c='purple', marker='x', s=100, label='Goal Point')
best_sphere_center_plot = ax.scatter(best_sphere_center[0], best_sphere_center[1], best_sphere_center[2], color='y', s=50, label='Best-Fit Sphere Center')
best_sphere_surface = visualize_best_fit_sphere(ax, Rmax, best_sphere_center)

robot_point_plot, = ax.plot(robot_position[0, 0:1], robot_position[1, 0:1], robot_position[2, 0:1], 'r*', linewidth=2)
position_vector = ax.quiver(robot_position[0, 0], robot_position[1, 0], robot_position[2, 0], R[0, 0], R[1, 0], R[2, 0], color='blue', linewidth=2)
robot_vector = ax.quiver(robot_position[0, 0], robot_position[1, 0], robot_position[2, 0], r_i[0, 0], r_i[1, 0], r_i[2, 0], color='green', linewidth=2)

def update(num, cloud_points, goal_point, robot_position, r_i, ax, robot_vector, position_vector, robot_point_plot, best_sphere_center_plot):
    global best_sphere_center, Rmax

    # Calculate the new position
    norm_R = np.linalg.norm(R[:, num])
    S = np.dot(R[:, num] / norm_R, r_i[:, num]) + 1
    u = -K_1 * np.tanh(norm_R) * np.sign(np.dot(R[:, num], r_i[:, num]))
    cross_product = np.cross(r_i[:, num], R[:, num] / norm_R)
    omega = (-K_2 * np.sign(S) * abs(S) ** 0.5 - (u - u * (np.dot(R[:, num] / norm_R, r_i[:, num]) ** 2))) * cross_product / np.linalg.norm(cross_product) ** 2

    robot_position[:, num + 1] = robot_position[:, num] + u * r_i[:, num] * del_T
    r_i[:, num + 1] = r_i[:, num] + np.cross(omega, r_i[:, num]) * del_T
    r_i[:, num + 1] /= np.linalg.norm(r_i[:, num + 1])

    # Update best decision sphere
    best_sphere = find_best_sphere(cloud_points, robot_position[:, num + 1])
    best_sphere_center = best_sphere[1]
    Rmax = best_sphere[0]

    R[:, num + 1] = best_sphere_center - robot_position[:, num + 1]

    # Update sphere visualization
    ax.collections.clear()
    ax.scatter(cloud_points[:, 0], cloud_points[:, 1], cloud_points[:, 2], c='b', marker='o', s=10, label='Cloud Points')
    ax.scatter(goal_point[0], goal_point[1], goal_point[2], c='purple', marker='x', s=100, label='Goal Point')
    ax.scatter(best_sphere_center[0], best_sphere_center[1], best_sphere_center[2], color='y', s=50, label='Best-Fit Sphere Center')
    visualize_best_fit_sphere(ax, Rmax, best_sphere_center)

    robot_vector.set_segments([(robot_position[:3, num + 1], robot_position[:3, num + 1] + r_i[:3, num + 1])])
    position_vector.set_segments([([robot_position[0, num + 1], robot_position[1, num + 1], robot_position[2, num + 1]], best_sphere_center)])
    robot_point_plot.set_data(robot_position[0, 0:num + 2], robot_position[1, 0:num + 2])
    robot_point_plot.set_3d_properties(robot_position[2, 0:num + 2])

    return robot_vector, position_vector, robot_point_plot, best_sphere_center_plot

ani = animation.FuncAnimation(fig, update, N_samples, fargs=(cloud_points, goal_point, robot_position, r_i, ax, robot_vector, position_vector, robot_point_plot, best_sphere_center_plot), interval=1, blit=False)

ax.legend()
plt.show()
