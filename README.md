# nrf52832
Getting Started with nrf52832 and BME280 Sensor - Bluetooth Low Energy 

[![](https://github.com/chandrasekar-vlsi/nrf52832/blob/master/banner.png)](http://nordicsemi.com)

## Introduction

This repo contains getting started guide(Ubuntu operating system) and and example to interface BME280 sensor via SPI. 


### 1. Download and install GNU ARM Embedded Toolchain 4.9

```
cd ~/Downloads/


wget https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2


sudo tar xvfj gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2 -C /usr/local


sudo apt-get install -y lib32ncurses5 lib32z1


echo 'PATH="/usr/local/gcc-arm-none-eabi-4_9-2015q3/bin:$PATH"' >> $HOME/.profile


source $HOME/.profile
```

### check version, expecting: 4.9.3 20150529 (release)

```
arm-none-eabi-gcc --version
```

## 2.Clone this repo

```
mkdir ~/nrf52 && cd ~/nrf52
```

```
git clone https://github.com/chandrasekar-vlsi/nrf52832 && cd nrf52832
```

## 3.Download SDK for nrf52832

```
cd ~/nrf52/nrf52832

wget http://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v12.x.x/nRF5_SDK_12.3.0_d7731ad.zip
```

```
unzip nRF5_SDK_12.3.0_d7731ad.zip
```

## 4.Command line tools 10.9.0 (Skip this step: it is already part of this repo)
### if you face any dll issues Download latest version from here and extract it to /home/nrf52/nrf52832/ folder (it should have mergehex anf nrfjprog)

https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Command-Line-Tools/Download


## 5.Install linecache2
```
pip3 install --user -U pip

hash -r

sudo pip3 install linecache2
```

## 6.Install nrfutil

```
git clone https://github.com/NordicSemiconductor/pc-nrfutil.git
```

```
cd pc-nrfutil

sudo pip3 install -r requirements.txt

sudo python3 setup.py install
```

### check version, expecting: 3.4.0 (or newer)

```
nrfutil version
```
Note: try`pip install -U protobuf` if you get TypeError: got an unexpected keyword argument 'serialized_options'

## 7.Download and install Jlink from the following link

https://www.segger.com/downloads/jlink/JLink_Linux_x86_64_beta.deb


## 8.Connect nRF DK board with your computer

## 9.compile, generate hex and flash hex file to DK-board

```
cd ~/nrf52/nrf52832/examples/BME280_SPI/pca10040/s132/armgcc


sudo ./flash.sh
```
Note: if you changed Command line tools version make sure you update the same in flash.sh

## 10. Pin mapping between nRF52 DK board and BME 280


| BME280 PINS   |  nRF52 DK board PINS   |
|--------------:|-----------------------:|
| GND           |  GND                   |
| VCC           | 3.3V                   |
| SCK           | P0.29                  |
| SDO           | P0.28                  |
| SDI           | P0.25                  |
| CS            | P0.03                  |
