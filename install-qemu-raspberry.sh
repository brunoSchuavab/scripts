#!/bin/bash

sudo apt-get install qemu-system-arm -y
sudo apt-get install qemu-system-x86 -y
mkdir ~/developer/
cd ~/developer/
git clone git://git.qemu-project.org/qemu.git
cd ./qemu/
sudo ./configure --enable-debug
sudo make && make install
qemu-system-arm -version
cd ~/developer/
git clone https://github.com/nachoparker/qemu-raspbian-network.git
cd ./qemu-rasobian-network/
wget https://downloads.raspberrypi.org/raspbian_lite_latest -O raspbian_lite_latest.zip
unzip raspibian_lite_latest.zip
sudo fdisk -l 2017-03-02-raspbian-jessie-lite.img
echo "512*137216"|bc -l
sudo mkdir -p  /mnt/rpi/
sudo mount -v -o offset=70254592 -t ext4 2017-03-02-raspbian-jessie-lite.img /mnt/rpi/
mount: /dev/loop3 mounted on /mnt/rpi
sudo vim /mnt/rpi/etc/ld.so.preload
sudo vim /mnt/rpi/etc/fstab
cd ~/developer/qemu-raspbian-network/
sudo umount /mnt/rpi
sudo ./qemu-pi.sh 2017-03-02-raspbian-jessie-lite.img
vncviewer 127.0.0.1:5900
