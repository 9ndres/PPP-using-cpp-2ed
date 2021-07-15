# CMakeList.txt : CMake project for chapter6_calc, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project ("Calculator")

# Add source to this project's executable.
add_executable (Calculator "Calculator.cpp" "Tokenize.h" "Tokenize.cpp");

# TODO: Add tests and install targets if needed.
