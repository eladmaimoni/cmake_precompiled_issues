cmake_minimum_required (VERSION 3.21)

include(utility.cmake)

############################################################################
#                          CCOMPILER STANDARDS
############################################################################
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)

if (MSVC)
    # https://stackoverflow.com/questions/58708772/cmake-project-in-visual-studio-gives-flag-override-warnings-command-line-warnin
    string(REGEX REPLACE "/W[3|4]" "/w" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}") 
endif()

project ("ReusedPrecompiledHeaders")


############################################################################
#                            PACKAGES
############################################################################


############################################################################
#                        GLOBAL VARIABLES
############################################################################

configure_default_output_directories()
if (VS_MULTI)
    message("settinng multiple configurations")
    set(CMAKE_CONFIGURATION_TYPES "Debug;Release;RelWithDebInfo" CACHE STRING "" FORCE)
else()
    message("settinng single configuration")
    set(CMAKE_CONFIGURATION_TYPES "${CMAKE_BUILD_TYPE}" CACHE STRING "" FORCE)
endif()
############################################################################
#                        SUB PROJECTS
############################################################################

add_subdirectory (precompiled)
add_subdirectory (main)










