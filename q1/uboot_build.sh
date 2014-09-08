#!/bin/bash
sudo apt-get install gcc-arm-linux-gnueabi  #Install cross compiler
git clone git://www.denx.de/git/u-boot.git u-boot  #Download the source code
cd u-boot # Enter source code dir
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- omap3_overo_config # Generate the config file
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- all -j4 # Compile the project
echo "Image is ready at ./u-boot/u-boot.img"
