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
- [Tangent Bug Algorithm](https://maegantucker.com/projects/2018-04-01-me133b/)

## Purpose of this project:

This project contains ROS packages for development, simulation and testing of:

- 3D Navigation (motion control + mapping) of the eca_a9 autonomous underwater vehicle (AUV.)
- A novel 'integrated planning and control (IPC) strategy' developed by [Veejay Karthik](https://github.com/uuvsimulator/uuv_simulator) applied to 3D underwater navigation in unknown, cluttered environments using the rexrov model.

## 3D Navigation of eca_a9 AUV:
### Progress:

- Incorporated 3D trajectories (helical, lissajou curves, figure of 8) into the 'idle mode' of the base dynamic positioning controller for standardized testing.
- Mounted a [forward looking sonar](https://field-robotics-lab.github.io/dave.doc/contents/dave_sensors/Multibeam-Forward-Looking-Sonar/) (FLS) on the eca_a9 vehicle by integrating the [sonar macro]((https://github.com/Field-Robotics-Lab/nps_uw_multibeam_sonar/tree/main/urdf)) with the vehicle [URDF](url(https://github.com/uuvsimulator/eca_a9/tree/master/eca_a9_description/urdf))
- Wrote launch files to test each trajectory tracking controller available in the uuv_simulator repository (originally configured for the rexrov model) on the eca_a9 model.
- A comparative evaluation was conducted between a non-model based sliding mode controller  [García-Valdovinos el al., 2014](https://journals.sagepub.com/doi/full/10.5772/56810), [Salgado-Jiménez et al., 2011](https://cdn.intechopen.com/pdfs/15221.pdf) and a PD geometric tracking controller. Both controllers were employed to track predefined 3D trajectories in Gazebo, and their respective performances were subsequently evaluated.
- Conducted a comprehensive literature Review on underwater path planning, trajectory tracking, and mapping methodologies.

### TODO:

- **Issue #1**: The resulting point cloud from the sonar plug-in does not result in an accurate 3D reconstruction of the world.
  - **Potential Fixes**:
    1. **Fixing Transformation incoherencies**
       - Inspect the transformation parameters used in the processing of the point cloud data as well as sonar configuration to ensure accurate spatial representation.
    2. **Review Sonar Documentation**
       - How is the point cloud being processed? Is the point cloud being used solely to create a sonar image and is not meant to be used for a 3D reconstrucion of the world? Can the raw sonar data be used to create accurate 3D point clouds?

- **Issue #2**: The [multibeam sonar specificiations](https://field-robotics-lab.github.io/dave.doc/contents/dave_sensors/Multibeam-Forward-Looking-Sonar/#parameters) do not meet the project requirements.
  - 








