#!/bin/bash

rm -rf build
mkdir -p build
(
cd build

cmake -DCMAKE_INSTALL_PREFIX=/usr -G Ninja ..
#cmake -DCMAKE_INSTALL_PREFIX=/usr -G "Unix Makefiles" ..
#emmake make
#make
ninja
#ctest -j 4
ninja install
)


