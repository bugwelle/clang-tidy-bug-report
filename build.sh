#!/usr/bin/env bash

rm -rf build
mkdir build && cd $_
cmake ..
make -j4

cmake  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON .. 
clang-tidy -checks='readability-*' -fix ../test.cpp
