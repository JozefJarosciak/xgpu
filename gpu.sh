#!/bin/bash

# Update package list and install necessary packages
apt update
apt -y install ocl-icd-opencl-dev
apt -y install nano
apt -y install htop
apt -y install nvtop

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git
cd XENGPUMiner
chmod +x build.sh
./build.sh

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xca5F023af4F822353A563Ae6a3591bA2024495E8/g' config.conf

# Install Python requirements
pip install -U -r requirements.txt

# Launch the miner and associated Python script
(for i in {1..4}; do nohup ./xengpuminer -b 2000 &> /dev/null & done) &
nohup python3 miner.py &> /dev/null &
