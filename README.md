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
    
  ### Tasks:
  - **Task #1**: Create a local octomap of the environment using FLS data.
  - **Task #2**: Use octomap to develop a collision avoidance algorithm for the eca_a9 vehicle. Identified algorithms include:
    1. [Tangent Bug Algorithm](https://maegantucker.com/projects/2018-04-01-me133b/)
    2. 3DVFH+ [Venneste et. al](https://ceur-ws.org/Vol-1319/morse14_paper_08.pdf) 

  ### Issues:
  - **Issue #1:** The resulting point cloud from the sonar plug-in does not result in an accurate 3D reconstruction of the world.
    - **Potential Fixes**:
      1. **Fixing Transformation Inconsistencies**
           - Inspect the transformation parameters used in the processing of the point cloud data as well as sonar configuration to ensure accurate spatial representation.
      2. **Review Sonar Documentation**
           - Investigate how the point cloud is being processed. Determine if the point cloud is intended solely for creating a sonar image and not for 3D reconstruction. Assess whether the raw sonar data can be utilized to create accurate 3D point clouds.
    
  - **Issue #2:** The [multibeam sonar parameters](https://field-robotics-lab.github.io/dave.doc/contents/dave_sensors/Multibeam-Forward-Looking-Sonar/#parameters) have a specified VFOV of 20 degrees and a range of 10-60m. Desired specs                    require a 30 degree VFOV and a range of 200m.   
      - **Potential Fixes**:
        - Study the plug-in source code to assess the feasability of modifying sonar parameters. 
        - Investigate other plugins that meet the desired specifications.
        - Write a new custom gazebo sonar plug-in.    

## Integrated Planning and Control:
  ### Progress:  
  - Extended the 2D integrated planning and control algorithm to 3D and validated the controller using the rexrov model in Gazebo.    
  ### Tasks:
  - **Task #1:** Incorporate sensor feedback into IPC.
  - **Task #2:** Generate synthetic 3D point cloud data in MATLAB/Python and run the decision sphere algorithm.

  ### Issues:
  
  - **Issue #3:** Point cloud processing node for IPC currently finds a decision sphere along one axis (x axis) only.
    - **Potential Fixes**:
      - Revisit the math to identify potential tweaks in the parameterized equation of the decision sphere and/or the need for transformations to search along other axes.
      - Generate synthetic point cloud data in Python/MATLAB for improved debugging.
        
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
