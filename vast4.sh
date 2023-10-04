#!/bin/bash

# Update package list and install necessary packages

sudo apt update
sleep 5
echo "---------------------------"

sudo apt -y install ocl-icd-opencl-dev
sleep 5
echo "---------------------------"

sudo apt -y install nano
sleep 5
echo "---------------------------"

sudo apt -y install htop
sleep 5
echo "---------------------------"

# sudo apt -y install nvtop
sudo apt -y install cmake
sleep 5
echo "---------------------------"

sudo apt -y install python3-pip
sleep 5
echo "---------------------------"

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git
sleep 5
echo "---------------------------"

cd XENGPUMiner
sleep 5
echo "---------------------------"

chmod +x build.sh
sleep 5
echo "---------------------------"

./build.sh
sleep 5
echo "---------------------------"

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xca5F023af4F822353A563Ae6a3591bA2024495E8/g' config.conf
sleep 5
echo "---------------------------"

# Install Python requirements
sudo pip install -U -r requirements.txt
sleep 5
echo "---------------------------"

sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d0 > xengpuminer-0.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d1 > xengpuminer-1.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d2 > xengpuminer-2.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d3 > xengpuminer-3.log 2>&1 &
sleep 5
echo "---------------------------"

