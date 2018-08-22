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


mkdir nrf52

cd nrf52

git clone https://github.com/chandrasekar-vlsi/nrf52832

cd nrf52832

Download SDK for nrf52832

wget http://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v12.x.x/nRF5_SDK_12.3.0_d7731ad.zip

unzip nRF5_SDK_12.3.0_d7731ad.zip

Download command line tools from here and extract it to /home/nrf52832/ folder

https://www.nordicsemi.com/eng/nordic/download_resource/51386/29/19549658/94917


Connect nRF DK board with the computer

cd ~/nrf52/nrf52832/examples/BME280_SPI/pca10040/s132/armgcc

./flash.sh


