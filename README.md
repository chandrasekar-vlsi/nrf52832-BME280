# nrf52832
Getting Started with nrf52832 and BME280 Sensor - Bluetooth Low Energy 

[![](https://www.nordicsemi.com/-/media/Images/Products/DevKits/nRF52-Series/nRF52-DK/nRF52-DK.png?h=530&la=en&mw=350&w=350&hash=48D397A047A718030261F80211DC881F8EFEA55D)](http://nordicsemi.com)

## Introduction

This repo contains getting started guide and and example to interface BME280 sensor via SPI.


## Download and install GNU ARM Embedded Toolchain 4.9

```
cd ~/Downloads/
```

```
wget https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2
```

```
sudo tar xvfj gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2 -C /usr/local
```

```
sudo apt-get install -y lib32ncurses5 lib32z1
```

```
echo 'PATH="/usr/local/gcc-arm-none-eabi-4_9-2015q3/bin:$PATH"' >> $HOME/.profile
```

```
source $HOME/.profile
```

## check version, expecting: 4.9.3 20150529 (release)

```
arm-none-eabi-gcc --version
```

```
mkdir ~/nrf52
```

```
cd ~/nrf52
```

```
git clone https://github.com/chandrasekar-vlsi/nrf52832
```

```
cd nrf52832
```

## Download SDK for nrf52832

```
wget http://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v12.x.x/nRF5_SDK_12.3.0_d7731ad.zip
```

```
unzip nRF5_SDK_12.3.0_d7731ad.zip
```

## Download command line tools from here and extract it to /home/nrf52832/ folder

```
https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Command-Line-Tools/Download

https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-10-x-x/10-9-0/nRFCommandLineTools1090Linuxamd64tar.gz
```

```
pip install linecache2
```

## Install nrfutil

```
git clone https://github.com/NordicSemiconductor/pc-nrfutil.git
```

```
cd pc-nrfutil
```

```
sudo pip install -r requirements.txt
```

```
sudo python setup.py install
```

## check version, expecting: 3.4.0 (or newer)

```
nrfutil version
```

```
https://www.segger.com/downloads/jlink/JLink_Linux_x86_64_beta.deb
```

## Connect nRF DK board with the computer

```
cd ~/nrf52/nrf52832/examples/BME280_SPI/pca10040/s132/armgcc
```

```
./flash.sh
```

## PIN MAPPING

BME280<----->nRF52 DK

GND<-------->GND

VCC<-------->3.3V

SCK<-------->P0.29

SDO<-------->P0.28

SDI<-------->P0.25

CS<-------->P0.03
