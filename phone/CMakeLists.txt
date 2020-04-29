cmake_minimum_required(VERSION 2.8.9)
project (phone)
 
#Define GNU standard installation directories
include( GNUInstallDirs )

#In case load library from system. For the static library and shared library: 
#set ( PROJECT_LINK_LIBS libsoftware.a libhardware.dylib)
# link library from installed directory
#link_directories( ${CMAKE_INSTALL_FULL_LIBDIR} )

add_executable(phone phone.cpp)
#Link from installed packages
target_link_libraries( phone software hardware )

#Link from current cmake project
#target_link_libraries(phone software hardware)
#target_include_directories( phone PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/hardware/include" )