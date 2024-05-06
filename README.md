## Some Useful Links:

- [uuv_simulator repository](https://github.com/uuvsimulator/uuv_simulator)
- [eca_a9 repository](https://github.com/uuvsimulator/eca_a9)
- [nps_uw_multibeam_sonar repository](https://github.com/Field-Robotics-Lab/nps_uw_multibeam_sonar)
- [octomap_mapping repository](https://github.com/OctoMap/octomap_mapping)
- [eca_a9 documentation](https://uuvsimulator.github.io/packages/eca_a9/intro/)
- [uuv_simulator documentation](https://uuvsimulator.github.io/packages/uuv_simulator/intro/)
- [multibeam sonar documentation](https://field-robotics-lab.github.io/dave.doc/contents/dave_sensors/Multibeam-Forward-Looking-Sonar/)
- [Octomap: An Efficient Probabilistic 3D Mapping Framework Based on Octrees](https://octomap.github.io/)
- [integrated planning and control](https://www.veejaykarthik.com/research-work)
- 

## Purpose of this project:

This project contains ROS packages for development, simulation and testing of:

- 3D Navigation (motion control + mapping) of the eca_a9 autonomous underwater vehicle (AUV.)
- A novel 'integrated planning and control (IPC) strategy' developed by [Veejay Karthik](https://github.com/uuvsimulator/uuv_simulator) for 3D underwater navigation in unknown, cluttered environments using the rexrov model.

## 3D Navigation of eca_a9 AUV:
### Current Status of Project:

- Incorporated 3D trajectories (helical, lissajou curves, figure of 8) into the 'idle mode' of the base dynamic positioning controller.
- Mounted a [forward looking sonar](https://field-robotics-lab.github.io/dave.doc/contents/dave_sensors/Multibeam-Forward-Looking-Sonar/) (FLS) on the eca_a9 vehicle by integrating the [sonar macro]((https://github.com/Field-Robotics-Lab/nps_uw_multibeam_sonar/tree/main/urdf)) with the vehicle [URDF](url(https://github.com/uuvsimulator/eca_a9/tree/master/eca_a9_description/urdf))

