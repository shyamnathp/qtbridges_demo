cmake_minimum_required(VERSION 3.16)
project(sample VERSION 1.0 LANGUAGES CXX)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Create the shared library
add_library(sample SHARED
    sample.cpp
    sample.h
)

# Set output directory and library name
set_target_properties(sample PROPERTIES
    OUTPUT_NAME "sample"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
)

# Install rules (optional)
install(TARGETS sample
    LIBRARY DESTINATION lib
    PUBLIC_HEADER DESTINATION include
)