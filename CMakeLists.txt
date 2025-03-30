cmake_minimum_required(VERSION 3.18)
project(anvil_cpp CXX)

set(CXX_STANDARD 21)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -O3 -Wextra -Wpedantic -std=c++17)
endif()

find_package(solis REQUIRED)

# =============================================================================
# Setup library
# =============================================================================
file(GLOB_RECURSE lib_src LIST_DIRECTORIES false "src/**.cpp")
add_library(${PROJECT_NAME} SHARED ${lib_src})
target_include_directories(${PROJECT_NAME} PUBLIC "include")
target_link_libraries(${PROJECT_NAME} solis::core)

export_config()