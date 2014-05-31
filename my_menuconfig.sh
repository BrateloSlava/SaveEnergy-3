#!/bin/bash
# toolchain
TOOLCHAIN=${HOME}/toolchain-4-9-1/bin/arm-eabi-
export ARCH=arm
export SUBARCH=arm
make CROSS_COMPILE=$TOOLCHAIN menuconfig
