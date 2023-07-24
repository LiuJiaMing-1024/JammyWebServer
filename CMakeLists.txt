CMAKE_MINIMUM_REQUIRED(VERSION 3.10)
project(web VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED true)

include_directories(include build)
configure_file("config.h.in" "config.h")


add_executable(jammy_server "${PROJECT_SOURCE_DIR}/src/jammy_server.cpp" "${PROJECT_SOURCE_DIR}/src/server_tool.cpp" "${PROJECT_SOURCE_DIR}/src/JammyHttpRequest.cpp")
add_executable(jammy_client "${PROJECT_SOURCE_DIR}/src/jammy_client.cpp")

add_executable(test "${PROJECT_SOURCE_DIR}/src/test.cpp")

target_link_libraries(jammy_server pthread)

target_link_libraries(test pthread)