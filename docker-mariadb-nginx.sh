#!/bin/bash

apt -y install git make
git clone https://github.com/beunoie/debian-mariadb.git
git clone https://github.com/beunoie/debian-nginx-php.git
cd debian-mariadb
make build >> /root/LOGS
make run
cd ../debian-nginx-php/
make build >> /root/LOGS
make prepare >> /root/LOGS
make run

echo "All Done!" >> /root/LOGS
