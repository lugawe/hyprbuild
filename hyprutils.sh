#!/usr/bin/env bash

# Step 2

set -e

echo build hyprutils...

git clone  --recursive https://github.com/hyprwm/hyprutils.git
cd hyprutils

cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
cmake --build ./build --config Release --target all -j`nproc 2>/dev/null || getconf NPROCESSORS_CONF`
cmake --install build

cd
