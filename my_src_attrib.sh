#!/bin/bash
export ARCH=arm
export PATH=$PATH:~/toolchain-4-9-1/bin
find ~/build/Src -type f -exec chmod 644 {} \;
make mrproper
ccache -C

