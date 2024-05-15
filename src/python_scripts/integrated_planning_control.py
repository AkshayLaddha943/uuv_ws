# import numpy as np

# def generate_synthetic_point_cloud(num_points, radius):
#     phi = np.random.uniform(0, 2 * np.pi, num_points)
#     costheta = np.random.uniform(-1, 1, num_points)
#     u = np.random.uniform(0, 1, num_points)
    
#     theta = np.arccos(costheta)
#     r = radius * np.cbrt(u)
    
#     x = r * np.sin(theta) * np.cos(phi)
#     y = r * np.sin(theta) * np.sin(phi)
#     z = r * np.cos(theta)
    
#     return np.column_stack((x, y, z))

# def generate_Ls_function(cloud_points):
#     points = np.array(cloud_points)
#     r = np.sqrt(np.sum(points**2, axis=1))
#     phi = np.arctan2(points[:, 1], points[:, 0])
#     theta = np.arccos(points[:, 2] / r)
    
#     phi_rounded = np.round(phi, 2)
#     theta_rounded = np.round(theta, 2)
    
#     unique_angles, indices = np.unique(np.column_stack((theta_rounded, phi_rounded)), axis=0, return_index=True)
#     Ls_values = r[indices]
    
#     Ls_function = dict(zip(map(tuple, unique_angles), Ls_values))
#     return Ls_function

# def calculate_Rmax(Ls_function, max_lidar_range=5.0):
#     if not Ls_function:
#         return max_lidar_range, None, None
    
#     angles = np.array(list(Ls_function.keys()))
#     R_values = np.array(list(Ls_function.values()))
    
#     R_values = np.nan_to_num(R_values, nan=max_lidar_range)
#     R_calculated = np.abs(R_values / (2 * np.cos(angles[:, 1]) * np.sin(angles[:, 0])))
#     R_calculated = np.clip(R_calculated, 0, max_lidar_range)
    
#     Rmax = np.nanmin(R_calculated) if np.any(np.isfinite(R_calculated)) else max_lidar_range
    
#     return Rmax, angles, R_calculated

# def calculate_all_spheres(cloud_points, num_directions=1000, max_lidar_range=5.0):
#     directions = np.random.randn(num_directions, 3)  # Picks random directions
#     directions /= np.linalg.norm(directions, axis=1)[:, np.newaxis]  # Normalizes each direction

#     spheres = []
#     for direction in directions:
#         basis = np.eye(3)
#         basis[0] = direction
#         basis[1] = np.cross(basis[0], np.array([0, 0, 1]))  # 2nd basis = 1st basis X z axis
#         if np.linalg.norm(basis[1]) < 1e-6:  # If 2nd basis is almost parallel to z axis, choose 2nd basis = 1st basis X y axis
#             basis[1] = np.cross(basis[0], np.array([0, 1, 0]))
#         basis[1] /= np.linalg.norm(basis[1])
#         basis[2] = np.cross(basis[0], basis[1])

#         # Calculate Rmax for each direction considered
#         rotated_cloud = np.dot(cloud_points, basis.T)
#         Ls_function = generate_Ls_function(rotated_cloud)
#         Rmax, _, _ = calculate_Rmax(Ls_function, max_lidar_range)
#         spheres.append((Rmax, direction * Rmax))

#     return spheres

# def find_best_sphere(cloud_points, robot_point):
#     spheres = calculate_all_spheres(cloud_points, num_directions=100, max_lidar_range=5.0)
#     best_sphere_index = np.argmin([np.linalg.norm(center - robot_point) for _, center in spheres])
#     best_sphere = spheres[best_sphere_index]
#     return best_sphere

# def controller(cloud_points, initial_position, initial_orientation, goal_position, K_1=1, K_2=1, N_samples=8000, del_T=0.001):
#     # Initializations
#     R = np.zeros((3, N_samples + 1))
#     r_i = np.zeros((3, N_samples + 1))
    
#     # Initial position and orientation
#     R[:, 0] = initial_position
#     r_i[:, 0] = initial_orientation

#     print("Initial position:", R[:, 0])
#     print("Initial orientation:", r_i[:, 0])
    
#     # Simulation loop
#     for i in range(N_samples):
#         best_sphere_radius, best_sphere_center = find_best_sphere(cloud_points, R[:, i])
#         R[:, i] = R[:, i] - best_sphere_center  # Update R to be the vector from sphere center to robot

#         print(f"Iteration {i}:")
#         print("Best sphere radius:", best_sphere_radius)
#         print("Best sphere center:", best_sphere_center)
#         print("Updated R vector:", R[:, i])

#         S = np.dot(R[:, i] / np.linalg.norm(R[:, i]), r_i[:, i]) + 1
#         u = -K_1 * np.tanh(np.linalg.norm(R[:, i])) * np.sign(np.dot(R[:, i], r_i[:, i]))
#         cross_prod = np.cross(r_i[:, i], R[:, i] / np.linalg.norm(R[:, i]))
#         omega = (-K_2 * np.sign(S) * abs(S)**0.5 - (u - u * (np.dot(R[:, i] / np.linalg.norm(R[:, i]), r_i[:, i])**2))) * cross_prod / (np.linalg.norm(cross_prod)**2)

#         R[:, i + 1] = R[:, i] + u * r_i[:, i] * del_T
#         r_i[:, i + 1] = r_i[:, i] + np.cross(omega, r_i[:, i]) * del_T
#         r_i[:, i + 1] /= np.linalg.norm(r_i[:, i + 1])

#         print("Linear Velocity u:", u)
#         print("Angular velocity omega:", omega)
#         print("Next position:", R[:, i + 1])
#         print("Next orientation:", r_i[:, i + 1])
#         # print('debug:', np.dot(r_i[:,i], omega))
    
    
#     return R, r_i

# cloud_points = generate_synthetic_point_cloud(1000, 5.0)
# initial_position = np.array([0, 0, -2])
# initial_orientation = np.array([1, 0, 0])
# goal_position = np.array([0, 0, 0])

# R, r_i = controller(cloud_points, initial_position, initial_orientation, goal_position)

# ''' visualization included:'''

# import numpy as np
# import matplotlib.pyplot as plt
# from mpl_toolkits.mplot3d import Axes3D
# import matplotlib.animation as animation
# import warnings

# def generate_synthetic_point_cloud(num_points, radius):
#     phi = np.random.uniform(0, 2 * np.pi, num_points)
#     costheta = np.random.uniform(-1, 1, num_points)
#     u = np.random.uniform(0, 1, num_points)
    
#     theta = np.arccos(costheta)
#     r = radius * np.cbrt(u)

#     x = r * np.sin(theta) * np.cos(phi)
#     y = r * np.sin(theta) * np.sin(phi)
#     z = r * np.cos(theta)
    
#     return np.column_stack((x, y, z))

# def generate_Ls_function(cloud_points):
#     points = np.array(cloud_points)
#     r = np.sqrt(np.sum(points**2, axis=1))
#     phi = np.arctan2(points[:, 1], points[:, 0])
#     theta = np.arccos(points[:, 2] / r)
    
#     phi_rounded = np.round(phi, 2)
#     theta_rounded = np.round(theta, 2)
    
#     unique_angles, indices = np.unique(np.column_stack((theta_rounded, phi_rounded)), axis=0, return_index=True)
#     Ls_values = r[indices]
    
#     Ls_function = dict(zip(map(tuple, unique_angles), Ls_values))
#     return Ls_function

# def calculate_Rmax(Ls_function, max_lidar_range=5.0):
#     if not Ls_function:
#         return max_lidar_range, None, None
    
#     angles = np.array(list(Ls_function.keys()))
#     R_values = np.array(list(Ls_function.values()))
    
#     R_values = np.nan_to_num(R_values, nan=max_lidar_range)
    
#     # Avoid division by zero
#     with np.errstate(divide='ignore', invalid='ignore'):
#         R_calculated = np.abs(R_values / (2 * np.cos(angles[:, 1]) * np.sin(angles[:, 0])))
    
#     R_calculated = np.clip(R_calculated, 0, max_lidar_range)
    
#     Rmax = np.nanmin(R_calculated) if np.any(np.isfinite(R_calculated)) else max_lidar_range
    
#     return Rmax, angles, R_calculated

# def calculate_all_spheres(cloud_points, num_directions=1000, max_lidar_range=5.0):
#     directions = np.random.randn(num_directions, 3)  # Picks random directions
#     directions /= np.linalg.norm(directions, axis=1)[:, np.newaxis]  # Normalizes each direction

#     spheres = []
#     for direction in directions:
#         basis = np.eye(3)
#         basis[0] = direction
#         basis[1] = np.cross(basis[0], np.array([0, 0, 1]))  # 2nd basis = 1st basis X z axis
#         if np.linalg.norm(basis[1]) < 1e-6:  # If 2nd basis is almost parallel to z axis, choose 2nd basis = 1st basis X y axis
#             basis[1] = np.cross(basis[0], np.array([0, 1, 0]))
#         basis[1] /= np.linalg.norm(basis[1])
#         basis[2] = np.cross(basis[0], basis[1])

#         # Calculate Rmax for each direction considered
#         rotated_cloud = np.dot(cloud_points, basis.T)
#         Ls_function = generate_Ls_function(rotated_cloud)
#         Rmax, _, _ = calculate_Rmax(Ls_function, max_lidar_range)
#         spheres.append((Rmax, direction * Rmax))

#     return spheres

# def find_best_sphere(cloud_points, robot_point):
#     spheres = calculate_all_spheres(cloud_points, num_directions=100, max_lidar_range=5.0)
#     best_sphere_index = np.argmin([np.linalg.norm(center - robot_point) for _, center in spheres])
#     best_sphere = spheres[best_sphere_index]
#     return best_sphere

# def controller(cloud_points, initial_position, initial_orientation, goal_position, K_1=10, K_2=5, N_samples=8000, del_T=0.001):
#     # Initializations
#     R = np.zeros((3, N_samples + 1))
#     r_i = np.zeros((3, N_samples + 1))
    
#     # Initial position and orientation
#     R[:, 0] = initial_position
#     r_i[:, 0] = initial_orientation

#     best_sphere_radius, best_sphere_center = find_best_sphere(cloud_points, R[:, 0])

#     print("Initial position:", R[:, 0])
#     print("Initial orientation:", r_i[:, 0])
#     print("Initial best sphere radius:", best_sphere_radius)
#     print("Initial best sphere center:", best_sphere_center)

#     # Visualization setup
#     fig = plt.figure()
#     ax = fig.add_subplot(111, projection='3d')
#     ax.set_xlabel('X')
#     ax.set_ylabel('Y')
#     ax.set_zlabel('Z')
#     ax.set_xlim([-5, 5])
#     ax.set_ylim([-5, 5])
#     ax.set_zlim([-5, 5])
    
#     point_cloud = ax.scatter(cloud_points[:, 0], cloud_points[:, 1], cloud_points[:, 2], color='gray', s=1)
#     robot_point, = ax.plot([R[0, 0]], [R[1, 0]], [R[2, 0]], 'yo', markersize=5, label='Robot')
#     goal_point, = ax.plot([goal_position[0]], [goal_position[1]], [goal_position[2]], 'mx', markersize=5, label='Goal')
#     position_vector = ax.quiver(0, 0, 0, R[0, 0], R[1, 0], R[2, 0], linewidth=2, color='blue', label='Position vector')
#     orientation_vector = ax.quiver(R[0, 0], R[1, 0], R[2, 0], r_i[0, 0], r_i[1, 0], r_i[2, 0], linewidth=2, color='green', label='Orientation vector')

#     u = np.linspace(0, 2 * np.pi, 100)
#     v = np.linspace(0, np.pi, 100)
#     x = best_sphere_radius * np.outer(np.cos(u), np.sin(v)) + best_sphere_center[0]
#     y = best_sphere_radius * np.outer(np.sin(u), np.sin(v)) + best_sphere_center[1]
#     z = best_sphere_radius * np.outer(np.ones(np.size(u)), np.cos(v)) + best_sphere_center[2]
#     best_sphere_plot = ax.plot_wireframe(x, y, z, color='orange', alpha=0.5)

#     def update_plot(num):
#         nonlocal best_sphere_plot
#         best_sphere_radius, best_sphere_center = find_best_sphere(cloud_points, R[:, num])
#         R[:, num] = R[:, num] - best_sphere_center  # Update R to be the vector from sphere center to robot

#         S = np.dot(R[:, num] / np.linalg.norm(R[:, num]), r_i[:, num]) + 1
#         u = -K_1 * np.tanh(np.linalg.norm(R[:, num])) * np.sign(np.dot(R[:, num], r_i[:, num]))
#         cross_prod = np.cross(r_i[:, num], R[:, num] / np.linalg.norm(R[:, num]))
#         omega = (-K_2 * np.sign(S) * abs(S)**0.5 - (u - u * (np.dot(R[:, num] / np.linalg.norm(R[:, num]), r_i[:, num])**2))) * cross_prod / (np.linalg.norm(cross_prod)**2)

#         R[:, num + 1] = R[:, num] + u * r_i[:, num] * del_T
#         r_i[:, num + 1] = r_i[:, num] + np.cross(omega, r_i[:, num]) * del_T
#         r_i[:, num + 1] /= np.linalg.norm(r_i[:, num + 1])

#         # Update plot
#         robot_point.set_data(R[0, num], R[1, num])
#         robot_point.set_3d_properties(R[2, num])
#         position_vector.remove()
#         orientation_vector.remove()
#         position_vector = ax.quiver(0, 0, 0, R[0, num], R[1, num], R[2, num], linewidth=2, color='blue')
#         orientation_vector = ax.quiver(R[0, num], R[1, num], R[2, num], r_i[0, num], r_i[1, num], r_i[2, num], linewidth=2, color='green')

#         # Remove old sphere plot
#         best_sphere_plot.remove()
#         # Plot the new decision sphere
#         x = best_sphere_radius * np.outer(np.cos(u), np.sin(v)) + best_sphere_center[0]
#         y = best_sphere_radius * np.outer(np.sin(u), np.sin(v)) + best_sphere_center[1]
#         z = best_sphere_radius * np.outer(np.ones(np.size(u)), np.cos(v)) + best_sphere_center[2]
#         best_sphere_plot = ax.plot_wireframe(x, y, z, color='orange', alpha=0.5)

#     ani = animation.FuncAnimation(fig, update_plot, frames=N_samples, interval=1, repeat=False)

#     plt.legend()
#     plt.show()

# # Example usage
# cloud_points = generate_synthetic_point_cloud(1000, 5.0)
# initial_position = np.array([0, 0, -2])
# initial_orientation = np.array([1, 0, 0])
# goal_position = np.array([0, 0, 0])

# controller(cloud_points, initial_position, initial_orientation, goal_position)

