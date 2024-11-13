# Install script for directory: C:/Users/Alfredo/source/repos/Git/Coding-samples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/install/x64-Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/fmt-build/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Coding-samples_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Coding-samples-1.0" TYPE DIRECTORY FILES "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/PackageProjectInclude/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Coding-samples_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Coding-samples-1.0" TYPE STATIC_LIBRARY FILES "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/Coding-samples.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Coding-samples_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Coding-samples-1.0/Coding-samplesTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Coding-samples-1.0/Coding-samplesTargets.cmake"
         "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/CMakeFiles/Export/a6ca68fade3d837b442f03693903b51f/Coding-samplesTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Coding-samples-1.0/Coding-samplesTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Coding-samples-1.0/Coding-samplesTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Coding-samples-1.0" TYPE FILE FILES "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/CMakeFiles/Export/a6ca68fade3d837b442f03693903b51f/Coding-samplesTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Coding-samples-1.0" TYPE FILE FILES "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/CMakeFiles/Export/a6ca68fade3d837b442f03693903b51f/Coding-samplesTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Coding-samples_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Coding-samples-1.0" TYPE FILE FILES
    "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/Coding-samplesConfigVersion.cmake"
    "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/Coding-samplesConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Coding-samples_Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Coding-samples-1.0" TYPE DIRECTORY FILES "C:/Users/Alfredo/source/repos/Git/Coding-samples/include/")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
