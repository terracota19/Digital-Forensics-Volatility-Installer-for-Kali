#!/bin/bash

cd ~/
mkdir -p scripts && cd scripts

if [ ! -d "venv" ]; then
    sudo apt update
    sudo apt install -y build-essential git libdistorm3-dev yara libraw1394-11 \
        libcapstone-dev capstone-tool tzdata python2 python2.7-dev libpython2-dev virtualenv
    virtualenv -p python2 venv
fi

source venv/bin/activate

if ! command -v pip2 &> /dev/null; then
    curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py
    python2 get-pip.py
fi

pip2 install --upgrade setuptools wheel
pip2 install pycryptodome distorm3==3.3.4 yara-python==3.8.1 pillow openpyxl ujson pytz ipython capstone

if [ ! -d "volatility" ]; then
    git clone https://github.com/volatilityfoundation/volatility.git
fi

cd volatility
python2 setup.py install
cd ..

cat << 'EOF' | sudo tee /usr/local/bin/vol.py > /dev/null
#!/bin/bash
source "$HOME/scripts/venv/bin/activate"
python2 "$HOME/scripts/volatility/vol.py" "$@"
EOF

sudo chmod +x /usr/local/bin/vol.py
