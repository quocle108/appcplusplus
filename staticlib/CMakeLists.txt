cmake_minimum_required(VERSION 3.15)
project(hardware)

# Define GNU standard installation directories
include( GNUInstallDirs )

# Bring the headers
include_directories(include/hardware)

# Can manually add the sources using the set command as follows:
set(SOURCES src/camera.cpp src/screen.cpp src/hardware.cpp)

# However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES "src/*.cpp")
file(GLOB HEADERS "include/hardware/*.hpp")

# Generate the static library from the sources
add_library(hardware STATIC ${SOURCES} ${HEADERS})

target_include_directories( hardware PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include" )

# install header file to system
#install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/hardware DESTINATION ${CMAKE_INSTALL_FULL_INCLUDEDIR})

# install binaries file to system
#install(TARGETS hardware
#   LIBRARY DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR} 
#ARCHIVE DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR})
