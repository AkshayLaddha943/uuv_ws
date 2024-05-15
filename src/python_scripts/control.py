import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Initializations
N_samples = 8000
del_T = 0.001
R = np.zeros((3, N_samples + 1))
r_i = np.zeros((3, N_samples + 1))

R[:, 0] = [0, 2, -2]
r_i[:, 0] = [1, 0, 0]

K_1 = 1
K_2 = 1

# Simulation loop
for i in range(N_samples):
    S = np.dot(R[:, i] / np.linalg.norm(R[:, i]), r_i[:, i]) + 1
    u = -K_1 * np.tanh(np.linalg.norm(R[:, i])) * np.sign(np.dot(R[:, i], r_i[:, i]))
    cross_prod = np.cross(r_i[:, i], R[:, i] / np.linalg.norm(R[:, i]))
    omega = (-K_2 * np.sign(S) * abs(S)**0.5 - (u - u * (np.dot(R[:, i] / np.linalg.norm(R[:, i]), r_i[:, i])**2))) * cross_prod / (np.linalg.norm(cross_prod)**2)

    R[:, i + 1] = R[:, i] + u * r_i[:, i] * del_T
    r_i[:, i + 1] = r_i[:, i] + np.cross(omega, r_i[:, i]) * del_T
    r_i[:, i + 1] /= np.linalg.norm(r_i[:, i + 1])

    print(f"Iteration {i}:")
    print("Linear Velocity u:", u)
    print("Angular velocity omega:", omega)

# Visualization
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# Initial plot
robot_point, = ax.plot([R[0, 0]], [R[1, 0]], [R[2, 0]], 'yo', markersize=5, label='Robot')
goal_point, = ax.plot([R[0, -1]], [R[1, -1]], [R[2, -1]], 'mx', markersize=5, label='Goal')
position_vector = ax.quiver(0, 0, 0, R[0, 0], R[1, 0], R[2, 0], linewidth=2, color='blue', label='Position vector')
orientation_vector = ax.quiver(R[0, 0], R[1, 0], R[2, 0], r_i[0, 0], r_i[1, 0], r_i[2, 0], linewidth=2, color='green', label='Orientation vector')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_xlim([-2, 4])
ax.set_ylim([-2, 4])
ax.set_zlim([-2, 4])
ax.grid(True)

for i in range(N_samples):
    # Update the vectors and points

    position_vector.remove()
    orientation_vector.remove()
    robot_point.remove()
    
    position_vector = ax.quiver(0, 0, 0, R[0, i], R[1, i], R[2, i], linewidth=2, color='blue')
    orientation_vector = ax.quiver(R[0, i], R[1, i], R[2, i], r_i[0, i], r_i[1, i], r_i[2, i], linewidth=2, color='green')
    robot_point, = ax.plot(R[0, :i+1], R[1, :i+1], R[2, :i+1], 'ro', markersize=5)
    
    plt.draw()
    plt.pause(0.001)
    ax.view_init(elev=45, azim=-45)

# Add legend
ax.legend()

plt.show()
