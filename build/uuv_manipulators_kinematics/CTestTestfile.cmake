# CMake generated Testfile for 
# Source directory: /home/ecl-109/uuv_ws/src/uuv_manipulators/uuv_manipulators_kinematics
# Build directory: /home/ecl-109/uuv_ws/build/uuv_manipulators_kinematics
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_uuv_manipulators_kinematics_rostest_test_test_kinematic_interfaces.test "/home/ecl-109/uuv_ws/build/uuv_manipulators_kinematics/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/ecl-109/uuv_ws/build/uuv_manipulators_kinematics/test_results/uuv_manipulators_kinematics/rostest-test_test_kinematic_interfaces.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ecl-109/uuv_ws/src/uuv_manipulators/uuv_manipulators_kinematics --package=uuv_manipulators_kinematics --results-filename test_test_kinematic_interfaces.xml --results-base-dir \"/home/ecl-109/uuv_ws/build/uuv_manipulators_kinematics/test_results\" /home/ecl-109/uuv_ws/src/uuv_manipulators/uuv_manipulators_kinematics/test/test_kinematic_interfaces.test ")
set_tests_properties(_ctest_uuv_manipulators_kinematics_rostest_test_test_kinematic_interfaces.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/ecl-109/uuv_ws/src/uuv_manipulators/uuv_manipulators_kinematics/CMakeLists.txt;34;add_rostest;/home/ecl-109/uuv_ws/src/uuv_manipulators/uuv_manipulators_kinematics/CMakeLists.txt;0;")
subdirs("gtest")
