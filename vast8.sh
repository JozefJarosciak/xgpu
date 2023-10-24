#!/bin/bash

# Update package list and install necessary packages

sudo apt update > /dev/null 2>&1
echo "Completed Update"

sudo apt -y install ocl-icd-opencl-dev > /dev/null 2>&1
echo "Installed OpenCL"

sudo apt -y install nano  > /dev/null 2>&1
echo "Installed Nano"

sudo apt -y install htop > /dev/null 2>&1
echo "Installed HTOP"

# sudo apt -y install nvtop > /dev/null 2>&1
sudo apt -y install cmake
echo "Installed cMake"

sudo apt -y install python3-pip > /dev/null 2>&1
echo "Installed Python"

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git > /dev/null 2>&1
echo "Cloned https://github.com/shanhaicoder/XENGPUMiner.git"

cd XENGPUMiner > /dev/null 2>&1
chmod +x build.sh > /dev/null 2>&1
./build.sh
echo "Set permissions - done!"

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xca5F023af4F822353A563Ae6a3591bA2024495E8/g' config.conf > /dev/null 2>&1
echo "Replaced ETH address"

# Install Python requirements
sudo pip install -U -r requirements.txt > /dev/null 2>&1
echo "Installed Python"

sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
echo "------STARTED MINER.PY-----------"

sudo nohup ./xengpuminer -d1 > xengpuminer-1.log 2>&1 &
echo "--------STARTED XENGPU 1-------------------"

sudo nohup ./xengpuminer -d2 > xengpuminer-2.log 2>&1 &
echo "--------STARTED XENGPU 2-------------------"

sudo nohup ./xengpuminer -d3 > xengpuminer-3.log 2>&1 &
echo "--------STARTED XENGPU 3-------------------"

sudo nohup ./xengpuminer -d4 > xengpuminer-4.log 2>&1 &
echo "--------STARTED XENGPU 4-------------------"

sudo nohup ./xengpuminer -d5 > xengpuminer-5.log 2>&1 &
echo "--------STARTED XENGPU 5-------------------"

sudo nohup ./xengpuminer -d6 > xengpuminer-6.log 2>&1 &
echo "--------STARTED XENGPU 6-------------------"

sudo nohup ./xengpuminer -d7 > xengpuminer-7.log 2>&1 &
echo "--------STARTED XENGPU 7-------------------"

sudo nohup ./xengpuminer -d0 > xengpuminer-0.log 2>&1 &
echo "--------STARTED XENGPU 8-------------------"
