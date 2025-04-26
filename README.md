# 🧠 Volatility 2 Kali Installation Script (Python2 Legacy)

This Bash script automates the setup of the **Volatility Framework** on Kali Linux, using isolated Python 2 virtual environments to ensure compatibility with legacy forensic tools and modules.

## 🔧 What It Does

- Creates a working directory at `~/scripts`
- Installs required packages: `virtualenv` and `python-dev`
- Sets up two Python 2 virtual environments:
  - `venv`: for auxiliary tools and common dependencies
  - `volatility`: for the Volatility framework itself
- Installs a legacy-compatible version of `pip` for Python 2
- Installs essential libraries: `pycryptodome`, `distorm3==3.3.4`
- Clones the official Volatility repository from GitHub
- Installs Volatility within its isolated environment


## ⚠️ Requirements

- **Kali Linux**.
- **Python 2.7** must be installed.
- **virtualenv** must be installed.
  
   ```bash
  sudo apt update && sudo apt upgrade
  sudo apt install python2 python2-dev virtualenv -y



## 🚀 Usage

1. Clone this repository or download the script manually.
2. Make sure the script has execute permissions:

   ```bash
   chmod +x volatility-install.sh
   sudo bash volatility-install.sh
