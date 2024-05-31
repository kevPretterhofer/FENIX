cmake_minimum_required(VERSION 3.10)

project(fenix)



# add the executable
add_executable(fenix main.cpp helper.cpp VerificationContext.cpp CircuitParser.cpp Gate.cpp Circuit.cpp VCDStorage.cpp Z3Checker.cpp Z3CheckerCA.cpp)

set (CMAKE_SHARED_LINKER_FLAGS "-lz3")
set (CMAKE_CXX_FLAGS "-lstdc++fs -std=c++17")


#todo: remove absolute path.
target_include_directories(fenix PUBLIC include)

#todo: remove absolute path.
target_link_libraries(fenix  /home/reppiz/Uni/Master/z3/z3/build/libz3.so)

