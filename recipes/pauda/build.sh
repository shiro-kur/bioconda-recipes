#!/bin/sh
set -x -e

export INCLUDE_PATH="${PREFIX}/include"
export LIBRARY_PATH="${PREFIX}/lib"
export LD_LIBRARY_PATH="${PREFIX}/lib"


export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
echo 'prefix is ' $PREFIX
mkdir -p $PREFIX
cp -rf pauda-1.0.1/bin $PREFIX/bin
cp -rf pauda-1.0.1/data $PREFIX/data
cp -rf pauda-1.0.1/lib $PREFIX/lib
