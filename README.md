# Volatility 2 Kali Installation Script (Python 2 Legacy)

This installation script automates the setup of the **Volatility Framework** on Kali Linux, utilizing isolated Python 2 virtual environments to ensure compatibility with legacy forensic tools and modules.

## Features

The script performs the following tasks:

- Creates a working directory at `~/scripts`.
- Installs necessary packages: `virtualenv`, `python-dev`, and others.
- Sets up two Python 2 virtual environments:
  - **venv**: for auxiliary tools and common dependencies.
  - **volatility**: for the Volatility framework.
- Installs a legacy-compatible version of `pip` for Python 2.
- Installs essential libraries: `pycryptodome`, `distorm3==3.3.4` (compatible with Python 2).
- Clones the official Volatility repository from GitHub.
- Installs Volatility within its isolated environment.

## Requirements

- **Kali Linux**.
- **Python 2.7** must be installed on the system.
- **virtualenv** must be available.

### Installing Dependencies

Before running the script, ensure your system is up-to-date and install the necessary dependencies:

```bash
sudo apt update && sudo apt upgrade -y
```
```bash
sudo apt-get install virtualenv python2 python2-dev python-dev-is-python3 git build-essential libssl-dev libffi-dev python2.7-dev -y
```
## Usage Instructions

### Step 1: Clone or Download the Script

You can either clone this repository or download the script manually.

To clone the repository:

```bash
git clone https://github.com/terracota19/Digital-Forensics-Volatility-Installer-for-Kali.git
```
```bash
cd Digital-Forensics-Volatility-Installer-for-Kali
```

### Step 2: Grant Execute Permissions

Ensure the script has execute permissions:

```bash
chmod +x volatility-install.sh
```
```bash
sudo bash volatility-install.sh
```
### Step 3: Verify the Installation
To confirm that the installation was successful, run the following command:

```bash
vol.py -h
```
If everything is correctly installed, you should see the Volatility help menu without any errors.

Enjoy Your Forensic Audits!
