#!/bin/bash

sudo apt update
sudo apt install -y build-essential curl zlib1g-dev libncurses5-dev libgdbm-dev \
    libnss3-dev libssl-dev libreadline-dev libffi-dev

cd /tmp
curl -O https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar -xf Python-2.7.18.tgz
cd Python-2.7.18
./configure --prefix=/opt/python2.7
make -j$(nproc)
sudo make install

sudo ln -s /opt/python2.7/bin/python2.7 /usr/local/bin/python2
sudo ln -s /opt/python2.7/bin/pip2 /usr/local/bin/pip2

sudo python2 -m ensurepip --upgrade
sudo pip2 install --upgrade setuptools wheel
sudo pip2 install pycryptodome distorm3==3.3.4 yara-python==3.8.1 pillow openpyxl ujson pytz ipython capstone

cd ~/
mkdir -p scripts && cd scripts

if [ ! -d "volatility" ]; then
    git clone https://github.com/volatilityfoundation/volatility.git
fi

cd volatility
sudo python2 setup.py install
sudo ln -s ~/scripts/volatility/vol.py /usr/local/bin/volatility
