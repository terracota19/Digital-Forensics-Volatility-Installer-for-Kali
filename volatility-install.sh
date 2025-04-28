#!/bin/bash

cd ~/
mkdir -p scripts && cd scripts

if [ ! -d "venv" ]; then
    virtualenv -p python2 venv
fi

source venv/bin/activate

if ! command -v pip2 &> /dev/null; then
    wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
    python2 get-pip.py
fi

pip2 install --upgrade setuptools
pip2 install pycryptodome distorm3==3.3.4

if [ ! -d "volatility" ]; then
    git clone https://github.com/volatilityfoundation/volatility.git
fi

cd volatility
python2 setup.py install

deactivate

echo "Volatility ha sido instalado correctamente."
echo "Para verificar la instalación, ejecuta 'vol.py -h'."
