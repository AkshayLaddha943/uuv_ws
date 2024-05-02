# - Config file for the libnabo package
# It defines the following variables
#  libnabo_INCLUDE_DIRS - include directories for libnabo
#  libnabo_LIBRARIES    - libraries to link against

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was libnaboConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

include(${CMAKE_CURRENT_LIST_DIR}/libnabo-targets.cmake)

# This causes catkin_simple to link against these libraries
set(libnabo_FOUND_CATKIN_PROJECT true)

# Compute paths
set(libnabo_INCLUDE_DIRS "")
set(libnabo_LIBRARIES "$<TARGET_FILE:libnabo::nabo>")

check_required_components("libnabo")
