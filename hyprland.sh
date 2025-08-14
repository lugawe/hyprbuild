#!/usr/bin/env bash

# Step 7

set -e

git clone --recursive https://github.com/hyprwm/Hyprland.git
cd Hyprland

make all
make install

cd
