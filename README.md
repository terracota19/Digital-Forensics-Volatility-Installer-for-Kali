# Volatility 2 Kali Installation Script (Python 2 Legacy)

This installation script automates the setup of the Volatility Framework 2.6.1 on Kali Linux, utilizing an isolated Python 2 virtual environment to ensure compatibility with legacy forensic tools and modules, including optional YARA-based memory scanning support via `yara-python==3.8.1`.

## Features

The script performs the following tasks:

- Creates a working directory at `~/scripts`.
- Creates a Python 2 virtual environment named **venv** (if it doesn't already exist).
- Activates the virtual environment.
- Installs a legacy-compatible version of `pip` for Python 2 if it is not already installed.
- Installs essential Python libraries:
  - `pycryptodome` (for cryptographic operations)
  - `distorm3==3.3.4` (for disassembly support)
  - `yara-python==3.8.1` (for YARA integration in memory analysis)
- Clones the official Volatility repository from GitHub (if it doesn't already exist).
- Installs the Volatility 2.6.1 framework within the virtual environment.
- Deactivates the virtual environment after installation.


## Requirements

- Kali Linux with sudo privileges.
- Internet connection to install system and Python packages.



## Usage Instructions

### Step 1: Download or Create the Script

Create a new file named `volatility-install.sh` and paste the script contents into it.

### Step 2: Grant Execute Permissions

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
