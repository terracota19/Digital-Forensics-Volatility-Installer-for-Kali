#!/bin/bash

sudo apt update
sudo apt install -y build-essential git libdistorm3-dev yara libraw1394-11 \
    libcapstone-dev capstone-tool tzdata python2 python2.7-dev libpython2-dev curl

if ! command -v pip2 &> /dev/null; then
    curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py
    sudo python2 get-pip.py
fi

sudo pip2 install --upgrade setuptools wheel
sudo pip2 install pycryptodome distorm3==3.3.4 yara-python==3.8.1 pillow openpyxl ujson pytz ipython capstone

cd ~/
mkdir -p scripts && cd scripts

if [ ! -d "volatility" ]; then
    git clone https://github.com/volatilityfoundation/volatility.git
fi

cd volatility
sudo python2 setup.py install
