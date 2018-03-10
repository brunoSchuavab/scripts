#!/bin/bash	
sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo npm install -g @angular/cli
cd /tmp
sudo git clone https://github.com/angular/quickstart.git quickstart
cd quickstart
sudo npm install
npm install typescript@2.2.1 --save

