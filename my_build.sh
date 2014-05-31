#!/bin/bash
# toolchain
TOOLCHAIN=${HOME}/toolchain-4-9-1/bin/arm-eabi-
export ARCH=arm
export SUBARCH=arm
# Get Build Startup Time
DATE_START=$(date +"%s")
rm -rf ../Kernel_output/zImage
rm -rf ../Kernel_output/*.img
rm -rf ../Kernel_output/modules/*
make CROSS_COMPILE=$TOOLCHAIN -j`grep 'processor' /proc/cpuinfo | wc -l` mrproper
make -j`grep 'processor' /proc/cpuinfo | wc -l` CROSS_COMPILE=$TOOLCHAIN zImage;
make -j`grep 'processor' /proc/cpuinfo | wc -l` CROSS_COMPILE=$TOOLCHAIN modules;
make CROSS_COMPILE=$TOOLCHAIN modules_install;
cp arch/arm/boot/zImage ../Kernel_output/zImage
find . -name "*.ko" -exec cp {} ../Kernel_output/modules \;
make CROSS_COMPILE=$TOOLCHAIN -j`grep 'processor' /proc/cpuinfo | wc -l` mrproper
cd ~/Kernel_output
./my_pack_4_2_2_k2u.sh
# Get Build Time
echo
echo "-------------------------"
echo "Build Completed in:"
echo "-------------------------"
echo
DATE_END=$(date +"%s")
DIFF=$(($DATE_END - $DATE_START))
echo "Time: $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds."
echo
