#!/bin/sh


lscpu
uname -m

git clone https://github.com/3MFConsortium/lib3mf.git
cd lib3mf
git checkout lib3mf-v2-develop
git submodule update --init --recursive
sh cmake/GenerateMake.sh
cd build
# cmake --build .
make -j4
ctest -V .
