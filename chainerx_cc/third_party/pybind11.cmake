cmake_minimum_required(VERSION 3.1)
project(pybind11-download NONE)

include(ExternalProject)
ExternalProject_Add(pybind11
    GIT_REPOSITORY    https://github.com/pybind/pybind11.git
    GIT_TAG           9a19306fbf30642ca331d0ec88e7da54a96860f9 # 2.2.4 
    SOURCE_DIR        "${CMAKE_BINARY_DIR}/pybind11"
    BINARY_DIR        ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND     ""
    INSTALL_COMMAND   ""
    TEST_COMMAND      ""
    )
