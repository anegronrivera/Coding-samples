#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Greeter::Greeter" for configuration "Debug"
set_property(TARGET Greeter::Greeter APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Greeter::Greeter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/Greeter-1.0/Greeter.lib"
  )

list(APPEND _cmake_import_check_targets Greeter::Greeter )
list(APPEND _cmake_import_check_files_for_Greeter::Greeter "${_IMPORT_PREFIX}/lib/Greeter-1.0/Greeter.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
