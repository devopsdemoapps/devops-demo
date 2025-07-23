#!/bin/bash
sudo apt update
sudo apt install -y software-properties-common language-pack-en-base dialog apt-utils
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
sudo cp /usr/share/zoneinfo/America/New_York /etc/localtime
sudo LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php
sudo apt update
sudo apt install -yq apache2 php5.6 php5.6-mysql mysql-client
sudo rm -rf /var/www/html/*
sudo wget https://github.com/devopsdemoapps/devops-demo/raw/master/devops-demo.tar.gz
sudo tar -xvzf devops-demo.tar.gz -C /var/www/html/
sudo wget https://raw.githubusercontent.com/devopsdemoapps/devops-demo/master/devops-demo.sql
sudo service apache2 restart
