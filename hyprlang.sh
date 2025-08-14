#!/usr/bin/env bash

# Step 4

set -e

git clone  --recursive https://github.com/hyprwm/hyprlang.git
cd hyprlang

cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
cmake --build ./build --config Release --target hyprlang -j`nproc 2>/dev/null || getconf _NPROCESSORS_CONF`
cmake --install ./build

cd
