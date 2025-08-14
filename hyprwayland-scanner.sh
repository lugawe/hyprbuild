#!/usr/bin/env bash

# Step 1

set -e

echo build hyprwayland-scanner...

git clone --recursive https://github.com/hyprwm/hyprwayland-scanner.git
cd hyprwayland-scanner

cmake -DCMAKE_INSTALL_PREFIX=/usr -B build
cmake --build build -j `nproc`
cmake --install build

cd
