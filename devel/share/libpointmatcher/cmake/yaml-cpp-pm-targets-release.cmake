#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "yaml-cpp-pm" for configuration "Release"
set_property(TARGET yaml-cpp-pm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(yaml-cpp-pm PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libyaml-cpp-pm.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS yaml-cpp-pm )
list(APPEND _IMPORT_CHECK_FILES_FOR_yaml-cpp-pm "${_IMPORT_PREFIX}/lib/libyaml-cpp-pm.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
