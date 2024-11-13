# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-src"
  "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-build"
  "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-subbuild/packageproject.cmake-populate-prefix"
  "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-subbuild/packageproject.cmake-populate-prefix/tmp"
  "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-subbuild/packageproject.cmake-populate-prefix/src/packageproject.cmake-populate-stamp"
  "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-subbuild/packageproject.cmake-populate-prefix/src"
  "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-subbuild/packageproject.cmake-populate-prefix/src/packageproject.cmake-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-subbuild/packageproject.cmake-populate-prefix/src/packageproject.cmake-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/Alfredo/source/repos/Git/Coding-samples/out/build/x64-Debug/_deps/packageproject.cmake-subbuild/packageproject.cmake-populate-prefix/src/packageproject.cmake-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
