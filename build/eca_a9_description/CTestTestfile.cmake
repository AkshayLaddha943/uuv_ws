# CMake generated Testfile for 
# Source directory: /home/ecl-109/uuv_ws/src/eca_a9/eca_a9_description
# Build directory: /home/ecl-109/uuv_ws/build/eca_a9_description
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_eca_a9_description_rostest_test_test_urdf_files.test "/home/ecl-109/uuv_ws/build/eca_a9_description/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/ecl-109/uuv_ws/build/eca_a9_description/test_results/eca_a9_description/rostest-test_test_urdf_files.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ecl-109/uuv_ws/src/eca_a9/eca_a9_description --package=eca_a9_description --results-filename test_test_urdf_files.xml --results-base-dir \"/home/ecl-109/uuv_ws/build/eca_a9_description/test_results\" /home/ecl-109/uuv_ws/src/eca_a9/eca_a9_description/test/test_urdf_files.test ")
set_tests_properties(_ctest_eca_a9_description_rostest_test_test_urdf_files.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/ecl-109/uuv_ws/src/eca_a9/eca_a9_description/CMakeLists.txt;19;add_rostest;/home/ecl-109/uuv_ws/src/eca_a9/eca_a9_description/CMakeLists.txt;0;")
subdirs("gtest")
