# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("//home/aluno/CLionProjects/teste/../libprg" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "//home/aluno/CLionProjects/teste/../libprg")
  message(FATAL_ERROR "File not found: //home/aluno/CLionProjects/teste/../libprg")
endif()

if("" STREQUAL "")
  message(WARNING "File cannot be verified since no URL_HASH specified")
  return()
endif()

if("" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(VERBOSE "verifying file...
     file='//home/aluno/CLionProjects/teste/../libprg'")

file("" "//home/aluno/CLionProjects/teste/../libprg" actual_value)

if(NOT "${actual_value}" STREQUAL "")
  message(FATAL_ERROR "error:  hash of
  //home/aluno/CLionProjects/teste/../libprg
does not match expected value
  expected: ''
    actual: '${actual_value}'
")
endif()

message(VERBOSE "verifying file... done")
