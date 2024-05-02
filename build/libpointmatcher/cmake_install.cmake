# Install script for directory: /home/ecl-109/uuv_ws/src/libpointmatcher

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ecl-109/uuv_ws/devel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ecl-109/uuv_ws/devel/include/pointmatcher/DeprecationWarnings.h;/home/ecl-109/uuv_ws/devel/include/pointmatcher/PointMatcher.h;/home/ecl-109/uuv_ws/devel/include/pointmatcher/PointMatcherPrivate.h;/home/ecl-109/uuv_ws/devel/include/pointmatcher/Parametrizable.h;/home/ecl-109/uuv_ws/devel/include/pointmatcher/Registrar.h;/home/ecl-109/uuv_ws/devel/include/pointmatcher/Timer.h;/home/ecl-109/uuv_ws/devel/include/pointmatcher/Functions.h;/home/ecl-109/uuv_ws/devel/include/pointmatcher/IO.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ecl-109/uuv_ws/devel/include/pointmatcher" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/src/libpointmatcher/pointmatcher/DeprecationWarnings.h"
    "/home/ecl-109/uuv_ws/src/libpointmatcher/pointmatcher/PointMatcher.h"
    "/home/ecl-109/uuv_ws/src/libpointmatcher/pointmatcher/PointMatcherPrivate.h"
    "/home/ecl-109/uuv_ws/src/libpointmatcher/pointmatcher/Parametrizable.h"
    "/home/ecl-109/uuv_ws/src/libpointmatcher/pointmatcher/Registrar.h"
    "/home/ecl-109/uuv_ws/src/libpointmatcher/pointmatcher/Timer.h"
    "/home/ecl-109/uuv_ws/src/libpointmatcher/pointmatcher/Functions.h"
    "/home/ecl-109/uuv_ws/src/libpointmatcher/pointmatcher/IO.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ecl-109/uuv_ws/build/libpointmatcher/libpointmatcher.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libpointmatcher" TYPE FILE FILES "/home/ecl-109/uuv_ws/src/libpointmatcher/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/libpointmatcher/cmake/libpointmatcher-config.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/libpointmatcher/cmake/libpointmatcher-config.cmake"
         "/home/ecl-109/uuv_ws/build/libpointmatcher/CMakeFiles/Export/share/libpointmatcher/cmake/libpointmatcher-config.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/libpointmatcher/cmake/libpointmatcher-config-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/libpointmatcher/cmake/libpointmatcher-config.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libpointmatcher/cmake" TYPE FILE FILES "/home/ecl-109/uuv_ws/build/libpointmatcher/CMakeFiles/Export/share/libpointmatcher/cmake/libpointmatcher-config.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libpointmatcher/cmake" TYPE FILE FILES "/home/ecl-109/uuv_ws/build/libpointmatcher/CMakeFiles/Export/share/libpointmatcher/cmake/libpointmatcher-config-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ecl-109/uuv_ws/devel/lib/cmake/pointmatcher/libpointmatcherConfig.cmake;/home/ecl-109/uuv_ws/devel/lib/cmake/pointmatcher/libpointmatcherConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ecl-109/uuv_ws/devel/lib/cmake/pointmatcher" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/build/libpointmatcher/CMakeFiles/libpointmatcherConfig.cmake"
    "/home/ecl-109/uuv_ws/build/libpointmatcher/libpointmatcherConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libpointmatcher/cmake" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/build/libpointmatcher/CMakeFiles/libpointmatcherConfig.cmake"
    "/home/ecl-109/uuv_ws/build/libpointmatcher/libpointmatcherConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES
    "/home/ecl-109/uuv_ws/build/libpointmatcher/libpointmatcher.pc"
    "/home/ecl-109/uuv_ws/build/libpointmatcher/pointmatcher.pc"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ecl-109/uuv_ws/build/libpointmatcher/contrib/cmake_install.cmake")
  include("/home/ecl-109/uuv_ws/build/libpointmatcher/examples/cmake_install.cmake")
  include("/home/ecl-109/uuv_ws/build/libpointmatcher/evaluations/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ecl-109/uuv_ws/build/libpointmatcher/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
