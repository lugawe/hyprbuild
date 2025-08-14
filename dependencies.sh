#!/usr/bin/env bash

set -e

apt update && apt install -y meson wget \
build-essential ninja-build cmake-extras cmake gettext gettext-base \
fontconfig libfontconfig-dev libffi-dev libxml2-dev libdrm-dev \
libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev \
libudev-dev libseat-dev seatd libxcb-dri3-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools \
libinput-bin libinput-dev libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev \
libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev \
libxcb-res0-dev libxcb-xinput-dev libtomlplusplus3 libre2-dev \
xdg-desktop-portal-wlr libpugixml-dev libwayland-dev wayland-protocols \
libgbm-dev hwdata libv4l-dev libzip-dev libtomlplusplus-dev \
libmagic-dev libxcursor-dev libxcb-errors-dev libdisplay-info-dev edid-decode
