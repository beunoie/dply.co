#!/bin/bash

apt -y install git make
git clone https://github.com/beunoie/pptpd.git
cd pptpd
make build >> /root/LOGS
make run

echo "All Done!" >> /root/LOGS
