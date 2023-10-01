#!/bin/bash

# Update package list and install necessary packages
apt update
apt -y install ocl-icd-opencl-dev
apt -y install nano
apt -y install htop
apt -y install nvtop
apt -y install cmake

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git
cd XENGPUMiner
chmod +x build.sh
./build.sh

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0x0a6969fff003b760c97005e03ff5a9741126167a/g' config.conf

# Install Python requirements
pip install -U -r requirements.txt

nohup python3 miner.py --gpu=true > miner.log 2>&1 &

nohup ./xengpuminer > xengpuminer.log 2>&1 &
nohup ./xengpuminer -d1 > xengpuminer.log 2>&1 &
nohup ./xengpuminer -d2 > xengpuminer.log 2>&1 &
nohup ./xengpuminer -d3 > xengpuminer.log 2>&1 &
nohup ./xengpuminer -d4 > xengpuminer.log 2>&1 &
nohup ./xengpuminer -d5 > xengpuminer.log 2>&1 &
nohup ./xengpuminer -d6 > xengpuminer.log 2>&1 &
nohup ./xengpuminer -d7 > xengpuminer.log 2>&1 &
