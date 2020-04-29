cmake_minimum_required(VERSION 2.8.9)
project(software)

#Define GNU standard installation directories
include( GNUInstallDirs )

#Bring the headers
include_directories(include/software)

#Can manually add the sources using the set command as follows:
#set(SOURCES src/gmail.cpp src/googlemap.cpp src/software.cpp)

#However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES "src/*.cpp")
file(GLOB HEADERS "include/software/*.hpp")

#Generate the shared library from the sources
add_library(software SHARED ${SOURCES} ${HEADERS})

target_include_directories( software PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include" )

# install header file to system
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/software DESTINATION ${CMAKE_INSTALL_FULL_INCLUDEDIR})

# install binaries file to system
install(TARGETS software
   LIBRARY DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR} 
ARCHIVE DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR})
