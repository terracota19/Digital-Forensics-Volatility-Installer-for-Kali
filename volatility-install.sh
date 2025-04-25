#!/bin/bash

cd ~/
mkdir -p scripts && cd scripts

sudo apt-get install virtualenv python-dev -y

# Primer entorno para herramientas
virtualenv -p python2 venv
source venv/bin/activate

wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2 get-pip.py

pip install --upgrade setuptools
pip install pycryptodome distorm3==3.3.4  # versión compatible con Python 2

deactivate

# Segundo entorno exclusivo para Volatility
virtualenv -p python2 volatility
source volatility/bin/activate

git clone https://github.com/volatilityfoundation/volatility
cd volatility
python setup.py install

deactivate
