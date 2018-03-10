#!/bin/bash
sudo apt-get install curl -y
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer
composer self-update
