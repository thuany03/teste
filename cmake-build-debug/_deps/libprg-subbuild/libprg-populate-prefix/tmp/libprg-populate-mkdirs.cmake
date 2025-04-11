# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-src")
  file(MAKE_DIRECTORY "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-src")
endif()
file(MAKE_DIRECTORY
  "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-build"
  "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-subbuild/libprg-populate-prefix"
  "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-subbuild/libprg-populate-prefix/tmp"
  "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-subbuild/libprg-populate-prefix/src/libprg-populate-stamp"
  "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-subbuild/libprg-populate-prefix/src"
  "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-subbuild/libprg-populate-prefix/src/libprg-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-subbuild/libprg-populate-prefix/src/libprg-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/aluno/CLionProjects/teste/cmake-build-debug/_deps/libprg-subbuild/libprg-populate-prefix/src/libprg-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
