#!/bin/bash

apt -y install git make
git clone https://github.com/beunoie/debian-mariadb.git
git clone https://github.com/beunoie/debian-nginx-php.git
cd debian-mariadb
make build
make run
cd ../debian-nginx-php/
make build
make prepare
make run

echo "All Done!"
