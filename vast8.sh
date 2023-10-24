#!/bin/bash

# Update package list and install necessary packages

sudo apt update
echo "---------------------------"

sudo apt -y install ocl-icd-opencl-dev
echo "---------------------------"

sudo apt -y install nano
echo "---------------------------"

sudo apt -y install htop
echo "---------------------------"

# sudo apt -y install nvtop
sudo apt -y install cmake
echo "---------------------------"

sudo apt -y install python3-pip
echo "---------------------------"

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git
echo "---------------------------"

cd XENGPUMiner
echo "---------------------------"

chmod +x build.sh
echo "---------------------------"

./build.sh
echo "---------------------------"

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xca5F023af4F822353A563Ae6a3591bA2024495E8/g' config.conf
echo "---------------------------"

# Install Python requirements
sudo pip install -U -r requirements.txt
echo "---------------------------"

sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
echo "------STARTING MINER-----------"

sudo nohup ./xengpuminer -d1 > xengpuminer-1.log 2>&1 &
echo "--------STARTING XENGPU 1-------------------"

sudo nohup ./xengpuminer -d2 > xengpuminer-2.log 2>&1 &
echo "--------STARTING XENGPU 2-------------------"

sudo nohup ./xengpuminer -d3 > xengpuminer-3.log 2>&1 &
echo "--------STARTING XENGPU 3-------------------"

sudo nohup ./xengpuminer -d4 > xengpuminer-4.log 2>&1 &
echo "--------STARTING XENGPU 4-------------------"

sudo nohup ./xengpuminer -d5 > xengpuminer-5.log 2>&1 &
echo "--------STARTING XENGPU 5-------------------"

sudo nohup ./xengpuminer -d6 > xengpuminer-6.log 2>&1 &
echo "--------STARTING XENGPU 6-------------------"

sudo nohup ./xengpuminer -d7 > xengpuminer-7.log 2>&1 &
echo "--------STARTING XENGPU 7-------------------"

sudo nohup ./xengpuminer -d0 > xengpuminer-0.log 2>&1 &
echo "--------STARTING XENGPU 8-------------------"
