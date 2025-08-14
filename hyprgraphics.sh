#!/usr/bin/env bash

# Step 6

set -e

git clone  --recursive https://github.com/hyprwm/hyprgraphics.git
cd hyprgraphics

cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
cmake --build ./build --config Release --target all -j`nproc 2>/dev/null || getconf NPROCESSORS_CONF`
cmake --install build

cd
