# nrf52832
Getting Started with nrf52832 - Bluetooth Low Energy 

Introduction

This repo contains getting started guide and and example to interface BME280 sensor via SPI.


Download and install GNU ARM Embedded Toolchain 4.9

cd ~/Downloads/
wget https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2
sudo tar xvfj gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2 -C /usr/local
sudo apt-get install -y lib32ncurses5 lib32z1
echo 'PATH="/usr/local/gcc-arm-none-eabi-4_9-2015q3/bin:$PATH"' >> $HOME/.profile
source $HOME/.profile

check version, expecting: 4.9.3 20150529 (release)
arm-none-eabi-gcc --version

download latest version (>3.40) from Segger website.
https://www.segger.com/products/development-tools/embedded-studio/

Download SDK for nrf52832
wget "http://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v12.x.x/nRF5_SDK_12.3.0_d7731ad.zip"


