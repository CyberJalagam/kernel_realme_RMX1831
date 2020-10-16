#!/bin/bash

echo "Cloning dependencies if they don't exist...."

if [ ! -d clang ]
then
git clone --depth=1 https://github.com/crdroidmod/android_prebuilts_clang_host_linux-x86_clang-5407736 clang

fi

if [ ! -d gcc32 ]
then
git clone --depth=1 https://github.com/KudProject/arm-linux-androideabi-4.9 gcc32
fi

if [ ! -d gcc ]
then
git clone --depth=1 https://github.com/KudProject/aarch64-linux-android-4.9 gcc
fi

if [ ! -d AnyKernel ]
then
git clone https://gitlab.com/Baibhab34/AnyKernel3.git -b rm1 --depth=1 AnyKernel
fi

echo "Done"
