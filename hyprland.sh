#!/usr/bin/env bash

# Step 7

set -e

echo build hyprland...

git clone --recursive https://github.com/hyprwm/Hyprland.git
cd Hyprland

make all
make install

cd
