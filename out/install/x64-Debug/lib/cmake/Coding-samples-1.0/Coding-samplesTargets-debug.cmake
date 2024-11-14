#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Coding-samples::Coding-samples" for configuration "Debug"
set_property(TARGET Coding-samples::Coding-samples APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Coding-samples::Coding-samples PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/Coding-samples-1.0/Coding-samples.lib"
  )

list(APPEND _cmake_import_check_targets Coding-samples::Coding-samples )
list(APPEND _cmake_import_check_files_for_Coding-samples::Coding-samples "${_IMPORT_PREFIX}/lib/Coding-samples-1.0/Coding-samples.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
