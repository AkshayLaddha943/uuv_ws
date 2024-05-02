execute_process(COMMAND "/home/ecl-109/uuv_ws/build/uuv_manipulators_control/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ecl-109/uuv_ws/build/uuv_manipulators_control/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
