#!/bin/bash

# add repositorios
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:fkrull/deadsnakes

# update
sudo apt-get update

# installs
sudo apt-get install unity-tweak-tool -y
sudo apt-get install vim -y
sudo apt-get install vlc -y
sudo apt-get install gimp -y
sudo apt-get install inkscape -y
sudo apt-get install atom -y
sudo apt-get install eagle -y
sudo apt-get install pythong3.4 -y
sudo apt-get install wine -y
sudo apt-get install python-software-properties -y
sudo apt-get install oracle-java8-installer -y
sudo apt-get install lamp-server^ -y

# tratamentos
rm /usr/local/bin/python
ln -s /usr/local/bin/python3.4 /usr/local/bin/python
