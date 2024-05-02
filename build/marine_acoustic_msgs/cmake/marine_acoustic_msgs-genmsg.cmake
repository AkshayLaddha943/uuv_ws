# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "marine_acoustic_msgs: 8 messages, 0 services")

set(MSG_I_FLAGS "-Imarine_acoustic_msgs:/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(marine_acoustic_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg" NAME_WE)
add_custom_target(_marine_acoustic_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marine_acoustic_msgs" "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg" ""
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg" NAME_WE)
add_custom_target(_marine_acoustic_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marine_acoustic_msgs" "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg" "std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg" NAME_WE)
add_custom_target(_marine_acoustic_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marine_acoustic_msgs" "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg" ""
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg" NAME_WE)
add_custom_target(_marine_acoustic_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marine_acoustic_msgs" "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg" "std_msgs/Header:marine_acoustic_msgs/PingInfo:geometry_msgs/Vector3:marine_acoustic_msgs/SonarImageData"
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg" NAME_WE)
add_custom_target(_marine_acoustic_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marine_acoustic_msgs" "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg" "std_msgs/Header:marine_acoustic_msgs/PingInfo:marine_acoustic_msgs/SonarImageData"
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg" NAME_WE)
add_custom_target(_marine_acoustic_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marine_acoustic_msgs" "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg" "std_msgs/Header:marine_acoustic_msgs/PingInfo:marine_acoustic_msgs/DetectionFlag"
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg" NAME_WE)
add_custom_target(_marine_acoustic_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marine_acoustic_msgs" "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg" ""
)

get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg" NAME_WE)
add_custom_target(_marine_acoustic_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marine_acoustic_msgs" "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg" "std_msgs/Header:marine_acoustic_msgs/PingInfo:geometry_msgs/Vector3:marine_acoustic_msgs/DetectionFlag"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_cpp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_cpp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_cpp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_cpp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_cpp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_cpp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_cpp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(marine_acoustic_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(marine_acoustic_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(marine_acoustic_msgs_generate_messages marine_acoustic_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_cpp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_cpp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_cpp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_cpp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_cpp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_cpp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_cpp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_cpp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marine_acoustic_msgs_gencpp)
add_dependencies(marine_acoustic_msgs_gencpp marine_acoustic_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marine_acoustic_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_eus(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_eus(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_eus(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_eus(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_eus(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_eus(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_eus(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(marine_acoustic_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(marine_acoustic_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(marine_acoustic_msgs_generate_messages marine_acoustic_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_eus _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_eus _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_eus _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_eus _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_eus _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_eus _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_eus _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_eus _marine_acoustic_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marine_acoustic_msgs_geneus)
add_dependencies(marine_acoustic_msgs_geneus marine_acoustic_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marine_acoustic_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_lisp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_lisp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_lisp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_lisp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_lisp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_lisp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_lisp(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(marine_acoustic_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(marine_acoustic_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(marine_acoustic_msgs_generate_messages marine_acoustic_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_lisp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_lisp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_lisp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_lisp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_lisp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_lisp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_lisp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_lisp _marine_acoustic_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marine_acoustic_msgs_genlisp)
add_dependencies(marine_acoustic_msgs_genlisp marine_acoustic_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marine_acoustic_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_nodejs(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_nodejs(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_nodejs(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_nodejs(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_nodejs(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_nodejs(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_nodejs(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(marine_acoustic_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(marine_acoustic_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(marine_acoustic_msgs_generate_messages marine_acoustic_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_nodejs _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_nodejs _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_nodejs _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_nodejs _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_nodejs _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_nodejs _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_nodejs _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_nodejs _marine_acoustic_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marine_acoustic_msgs_gennodejs)
add_dependencies(marine_acoustic_msgs_gennodejs marine_acoustic_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marine_acoustic_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_py(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_py(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_py(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_py(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_py(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_py(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
)
_generate_msg_py(marine_acoustic_msgs
  "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(marine_acoustic_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(marine_acoustic_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(marine_acoustic_msgs_generate_messages marine_acoustic_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/DetectionFlag.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_py _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/Dvl.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_py _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/PingInfo.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_py _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/ProjectedSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_py _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/RawSonarImage.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_py _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarDetections.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_py _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarImageData.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_py _marine_acoustic_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ecl-109/uuv_ws/src/hydrographic_msgs/marine_acoustic_msgs/msg/SonarRanges.msg" NAME_WE)
add_dependencies(marine_acoustic_msgs_generate_messages_py _marine_acoustic_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marine_acoustic_msgs_genpy)
add_dependencies(marine_acoustic_msgs_genpy marine_acoustic_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marine_acoustic_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marine_acoustic_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(marine_acoustic_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(marine_acoustic_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marine_acoustic_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(marine_acoustic_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(marine_acoustic_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marine_acoustic_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(marine_acoustic_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(marine_acoustic_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marine_acoustic_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(marine_acoustic_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(marine_acoustic_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marine_acoustic_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(marine_acoustic_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(marine_acoustic_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
