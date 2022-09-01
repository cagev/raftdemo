project (raftdemo)
cmake_minimum_required (VERSION 3.1)
set(CMAKE_CXX_STANDARD 17)


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

 
include_directories(include)
include_directories(bin/include)
link_directories(bin/lib)
 

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=c++17 -pthread  -g   ")

add_executable(demoserver demoserver.cpp)
target_link_libraries(demoserver raft uv )
