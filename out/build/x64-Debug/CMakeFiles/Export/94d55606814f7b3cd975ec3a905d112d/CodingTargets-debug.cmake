#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Coding::Coding" for configuration "Debug"
set_property(TARGET Coding::Coding APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Coding::Coding PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/Coding-1.0/Coding.lib"
  )

list(APPEND _cmake_import_check_targets Coding::Coding )
list(APPEND _cmake_import_check_files_for_Coding::Coding "${_IMPORT_PREFIX}/lib/Coding-1.0/Coding.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
