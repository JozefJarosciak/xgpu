#!/bin/bash

# Update package list and install necessary packages
sudo apt update
sudo apt -y install ocl-icd-opencl-dev
sudo apt -y install nano
sudo apt -y install htop
# sudo apt -y install nvtop
sudo apt -y install cmake
sudo apt -y install python3-pip

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git
cd XENGPUMiner
chmod +x build.sh
./build.sh

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xca5F023af4F822353A563Ae6a3591bA2024495E8/g' config.conf

# Install Python requirements
sudo pip install -U -r requirements.txt
sudo nohup python miner.py --gpu=true > miner.log 2>&1 &
sudo nohup ./xengpuminer > xengpuminer.log 2>&1 &
