#!/usr/bin/env bash

set -e

echo check dependencies...

sh dependencies.sh

echo build...

echo build hyprwayland-scanner...
sh hyprwayland-scanner.sh

echo build hyprutils...
sh hyprutils.sh

echo build aquamarine...
sh aquamarine.sh

echo build hyprlang...
sh hyprlang.sh

echo build hyprcursor...
sh hyprcursor.sh

echo build hyprland...
sh hyprland.sh

