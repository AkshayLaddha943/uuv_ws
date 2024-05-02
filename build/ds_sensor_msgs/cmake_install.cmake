# Install script for directory: /home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ecl-109/uuv_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ecl-109/uuv_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ecl-109/uuv_ws/install" TYPE PROGRAM FILES "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ecl-109/uuv_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ecl-109/uuv_ws/install" TYPE PROGRAM FILES "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ecl-109/uuv_ws/install/setup.bash;/home/ecl-109/uuv_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ecl-109/uuv_ws/install" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/setup.bash"
    "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ecl-109/uuv_ws/install/setup.sh;/home/ecl-109/uuv_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ecl-109/uuv_ws/install" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/setup.sh"
    "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ecl-109/uuv_ws/install/setup.zsh;/home/ecl-109/uuv_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ecl-109/uuv_ws/install" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/setup.zsh"
    "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ecl-109/uuv_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ecl-109/uuv_ws/install" TYPE FILE FILES "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ds_sensor_msgs/msg" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/AcousticCurrentProfile.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Adcp.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Compass.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Ctd.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/DepthPressure.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Dvl.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Gyro.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Ins.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/MemsImu.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/NortekDF21.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/OxygenConcentration.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/PhinsStandard.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/RdiPD0.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/SoundSpeed.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/VectorMagneticField.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Range3D.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Ranges3D.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/ForwardLookingStatus.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Velocity3D.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/NortekVectorSystem.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/Frequency.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/PhinsStatus.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/PhinsStdbin3.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/UbloxNav.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/UbloxSignal.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/UbloxSignals.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/UbloxSatellite.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/UbloxSatellites.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/UbloxSurveyIn.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/RdiPD5.msg"
    "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/msg/WaterCurrentProfile.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ds_sensor_msgs/cmake" TYPE FILE FILES "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/ds_sensor_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/include/ds_sensor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/share/roseus/ros/ds_sensor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/share/common-lisp/ros/ds_sensor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/share/gennodejs/ros/ds_sensor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/lib/python3/dist-packages/ds_sensor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/lib/python3/dist-packages/ds_sensor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ds_sensor_msgs" TYPE FILE FILES "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/include/ds_sensor_msgs/PhinsConfigConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/ds_sensor_msgs" TYPE FILE FILES "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/lib/python3/dist-packages/ds_sensor_msgs/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/lib/python3/dist-packages/ds_sensor_msgs/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/ds_sensor_msgs" TYPE DIRECTORY FILES "/home/ecl-109/uuv_ws/devel/.private/ds_sensor_msgs/lib/python3/dist-packages/ds_sensor_msgs/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/ds_sensor_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ds_sensor_msgs/cmake" TYPE FILE FILES "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/ds_sensor_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ds_sensor_msgs/cmake" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/ds_sensor_msgsConfig.cmake"
    "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/catkin_generated/installspace/ds_sensor_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ds_sensor_msgs" TYPE FILE FILES "/home/ecl-109/uuv_ws/src/ds_msgs/ds_sensor_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ecl-109/uuv_ws/build/ds_sensor_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ecl-109/uuv_ws/build/ds_sensor_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
