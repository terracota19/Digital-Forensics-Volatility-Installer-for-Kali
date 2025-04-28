#!/bin/bash
cd ~/
mkdir -p scripts && cd scripts

if [ ! -d "venv" ]; then
    virtualenv -p python2 venv
fi

source venv/bin/activate
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py

python2 get-pip.py
pip2 install --upgrade setuptools
pip2 install pycryptodome distorm3==3.3.4  # versión compatible con Python 2

if [ ! -d "volatility" ]; then
    python2 setup.py install
fi
