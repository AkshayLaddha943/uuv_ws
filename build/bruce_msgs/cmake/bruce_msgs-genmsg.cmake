# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bruce_msgs: 1 messages, 3 services")

set(MSG_I_FLAGS "-Ibruce_msgs:/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bruce_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg" NAME_WE)
add_custom_target(_bruce_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bruce_msgs" "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv" NAME_WE)
add_custom_target(_bruce_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bruce_msgs" "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv" "nav_msgs/Path:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv" NAME_WE)
add_custom_target(_bruce_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bruce_msgs" "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv" "nav_msgs/Path:std_msgs/Header:bruce_msgs/ISAM2Update:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv" NAME_WE)
add_custom_target(_bruce_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bruce_msgs" "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv" "nav_msgs/MapMetaData:std_msgs/Header:nav_msgs/OccupancyGrid:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bruce_msgs
)

### Generating Services
_generate_srv_cpp(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bruce_msgs
)
_generate_srv_cpp(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bruce_msgs
)
_generate_srv_cpp(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bruce_msgs
)

### Generating Module File
_generate_module_cpp(bruce_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bruce_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bruce_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bruce_msgs_generate_messages bruce_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_cpp _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_cpp _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_cpp _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_cpp _bruce_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bruce_msgs_gencpp)
add_dependencies(bruce_msgs_gencpp bruce_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bruce_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bruce_msgs
)

### Generating Services
_generate_srv_eus(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bruce_msgs
)
_generate_srv_eus(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bruce_msgs
)
_generate_srv_eus(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bruce_msgs
)

### Generating Module File
_generate_module_eus(bruce_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bruce_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bruce_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bruce_msgs_generate_messages bruce_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_eus _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_eus _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_eus _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_eus _bruce_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bruce_msgs_geneus)
add_dependencies(bruce_msgs_geneus bruce_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bruce_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bruce_msgs
)

### Generating Services
_generate_srv_lisp(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bruce_msgs
)
_generate_srv_lisp(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bruce_msgs
)
_generate_srv_lisp(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bruce_msgs
)

### Generating Module File
_generate_module_lisp(bruce_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bruce_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bruce_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bruce_msgs_generate_messages bruce_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_lisp _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_lisp _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_lisp _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_lisp _bruce_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bruce_msgs_genlisp)
add_dependencies(bruce_msgs_genlisp bruce_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bruce_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bruce_msgs
)

### Generating Services
_generate_srv_nodejs(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bruce_msgs
)
_generate_srv_nodejs(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bruce_msgs
)
_generate_srv_nodejs(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bruce_msgs
)

### Generating Module File
_generate_module_nodejs(bruce_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bruce_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bruce_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bruce_msgs_generate_messages bruce_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_nodejs _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_nodejs _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_nodejs _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_nodejs _bruce_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bruce_msgs_gennodejs)
add_dependencies(bruce_msgs_gennodejs bruce_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bruce_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bruce_msgs
)

### Generating Services
_generate_srv_py(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bruce_msgs
)
_generate_srv_py(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bruce_msgs
)
_generate_srv_py(bruce_msgs
  "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bruce_msgs
)

### Generating Module File
_generate_module_py(bruce_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bruce_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bruce_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bruce_msgs_generate_messages bruce_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/msg/ISAM2Update.msg" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_py _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/QueryExplorationPath.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_py _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/PredictSLAMUpdate.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_py _bruce_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/sonar-SLAM/bruce_msgs/srv/GetOccupancyMap.srv" NAME_WE)
add_dependencies(bruce_msgs_generate_messages_py _bruce_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bruce_msgs_genpy)
add_dependencies(bruce_msgs_genpy bruce_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bruce_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bruce_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bruce_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(bruce_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(bruce_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(bruce_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bruce_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bruce_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(bruce_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(bruce_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(bruce_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bruce_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bruce_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(bruce_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(bruce_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(bruce_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bruce_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bruce_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(bruce_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(bruce_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(bruce_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bruce_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bruce_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bruce_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(bruce_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(bruce_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(bruce_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
