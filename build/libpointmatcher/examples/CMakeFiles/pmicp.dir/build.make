# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ecl-109/uuv_ws/src/libpointmatcher

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ecl-109/uuv_ws/build/libpointmatcher

# Include any dependencies generated for this target.
include examples/CMakeFiles/pmicp.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/pmicp.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/pmicp.dir/flags.make

examples/CMakeFiles/pmicp.dir/icp.cpp.o: examples/CMakeFiles/pmicp.dir/flags.make
examples/CMakeFiles/pmicp.dir/icp.cpp.o: /home/ecl-109/uuv_ws/src/libpointmatcher/examples/icp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecl-109/uuv_ws/build/libpointmatcher/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/pmicp.dir/icp.cpp.o"
	cd /home/ecl-109/uuv_ws/build/libpointmatcher/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pmicp.dir/icp.cpp.o -c /home/ecl-109/uuv_ws/src/libpointmatcher/examples/icp.cpp

examples/CMakeFiles/pmicp.dir/icp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pmicp.dir/icp.cpp.i"
	cd /home/ecl-109/uuv_ws/build/libpointmatcher/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecl-109/uuv_ws/src/libpointmatcher/examples/icp.cpp > CMakeFiles/pmicp.dir/icp.cpp.i

examples/CMakeFiles/pmicp.dir/icp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pmicp.dir/icp.cpp.s"
	cd /home/ecl-109/uuv_ws/build/libpointmatcher/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecl-109/uuv_ws/src/libpointmatcher/examples/icp.cpp -o CMakeFiles/pmicp.dir/icp.cpp.s

# Object files for target pmicp
pmicp_OBJECTS = \
"CMakeFiles/pmicp.dir/icp.cpp.o"

# External object files for target pmicp
pmicp_EXTERNAL_OBJECTS =

examples/pmicp: examples/CMakeFiles/pmicp.dir/icp.cpp.o
examples/pmicp: examples/CMakeFiles/pmicp.dir/build.make
examples/pmicp: libpointmatcher.a
examples/pmicp: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
examples/pmicp: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
examples/pmicp: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
examples/pmicp: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
examples/pmicp: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
examples/pmicp: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
examples/pmicp: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
examples/pmicp: /home/ecl-109/uuv_ws/devel/lib/libnabo.a
examples/pmicp: contrib/yaml-cpp-pm/libyaml-cpp-pm.a
examples/pmicp: examples/CMakeFiles/pmicp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ecl-109/uuv_ws/build/libpointmatcher/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pmicp"
	cd /home/ecl-109/uuv_ws/build/libpointmatcher/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pmicp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/pmicp.dir/build: examples/pmicp

.PHONY : examples/CMakeFiles/pmicp.dir/build

examples/CMakeFiles/pmicp.dir/clean:
	cd /home/ecl-109/uuv_ws/build/libpointmatcher/examples && $(CMAKE_COMMAND) -P CMakeFiles/pmicp.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/pmicp.dir/clean

examples/CMakeFiles/pmicp.dir/depend:
	cd /home/ecl-109/uuv_ws/build/libpointmatcher && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ecl-109/uuv_ws/src/libpointmatcher /home/ecl-109/uuv_ws/src/libpointmatcher/examples /home/ecl-109/uuv_ws/build/libpointmatcher /home/ecl-109/uuv_ws/build/libpointmatcher/examples /home/ecl-109/uuv_ws/build/libpointmatcher/examples/CMakeFiles/pmicp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/pmicp.dir/depend

