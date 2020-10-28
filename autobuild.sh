#!/bin/bash

rm -rf build
mkdir -p build
(cd packages/ssl
if grep --quiet -l -i DMILES ssl.pl; then
  echo already patched
else
  echo git apply ../../dmiles-ssl.patch
  git apply --stat --apply ../../dmiles-ssl.patch
fi
)
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


