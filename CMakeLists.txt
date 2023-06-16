cmake_minimum_required(VERSION 3.18)

project(ArmAssembly CXX ASM)

if (NOT CMAKE_BUILD_TYPE)
  message(STATUS "Build type not set - using Release")
  set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose build type: Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif()

# set output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

include_directories(${CMAKE_CURRENT_LIST_DIR}/Include)
add_subdirectory(Chapter11)
