#!/usr/bin/env bash

# Step 3

set -e

echo build aquamarine...

git clone  --recursive https://github.com/hyprwm/aquamarine.git
cd aquamarine

cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
cmake --build ./build --config Release --target all -j`nproc 2>/dev/null || getconf _NPROCESSORS_CONF`
cmake --install build

cd
