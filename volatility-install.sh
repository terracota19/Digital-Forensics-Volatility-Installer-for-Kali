#!/bin/bash
cd ~/
mkdir -p scripts && cd scripts
sudo apt-get install virtualenv python-dev git build-essential libssl-dev libffi-dev python2.7-dev -y

if [ ! -d "venv" ]; then
    virtualenv -p python2 venv
fi

source venv/bin/activate
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2 get-pip.py
pip2 install --upgrade setuptools
pip2 install pycryptodome distorm3==3.3.4  # versión compatible con Python 2
deactivate

if [ ! -d "volatility" ]; then
    virtualenv -p python2 volatility
fi
