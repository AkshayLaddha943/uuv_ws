#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libnabo::nabo" for configuration "Release"
set_property(TARGET libnabo::nabo APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libnabo::nabo PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libnabo.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS libnabo::nabo )
list(APPEND _IMPORT_CHECK_FILES_FOR_libnabo::nabo "${_IMPORT_PREFIX}/lib/libnabo.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
