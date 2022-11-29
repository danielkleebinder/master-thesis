#!/usr/bin/bash

## Rebuild vutinfth class file when updating submodule

git submodule init
git submodule update

cd vutinfth
bash ./build-all.sh

cd ..
mkdir -p ./graphics

cp ./vutinfth/vutinfth.cls .
cp -f ./vutinfth/graphics/* ./graphics/
