#!/bin/bash

echo "-------------------------"
echo "       XENBLOCKS         "
echo "    STARTING INSTALL     "
echo "-------------------------"

sudo apt -y upgrade > /dev/null 2>&1
echo "STEP 1 of 10: Completed Packages Update"

sudo apt -y install ocl-icd-opencl-dev > /dev/null 2>&1
echo "STEP 2 of 10: Installed OpenCL"

sudo apt -y install nano  > /dev/null 2>&1
echo "STEP 3 of 10: Installed Nano"

sudo apt -y install cmake  > /dev/null 2>&1
echo "STEP 4 of 10: Installed cMake"

sudo apt -y install python3-pip > /dev/null 2>&1
echo "STEP 5 of 10: Installed Python"

sudo git clone https://github.com/shanhaicoder/XENGPUMiner.git > /dev/null 2>&1
echo "STEP 6 of 10: Cloned https://github.com/shanhaicoder/XENGPUMiner.git"

cd XENGPUMiner
sudo chmod +x build.sh > /dev/null 2>&1
sudo ./build.sh > /dev/null 2>&1
echo "STEP 7 of 10: Permissions set!"

sudo sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xbfe0a5Ba7143d8a56ED94be6937cEE49CB6c9CF9 /g' config.conf > /dev/null 2>&1
echo "STEP 8 of 10: Replaced ETH address"

sudo pip install -U -r requirements.txt > /dev/null 2>&1
echo "STEP 9 of 10: Installed Python Requirements"

echo "STEP 10 of 10: Starting Miner & GPU"
sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sudo nohup ./xengpuminer > xengpuminer.log 2>&1 &

echo "-------------------------"
echo "    MINING  XENBLOCKS    "
echo "     https://xen.pub     "
echo "-------------------------"
echo " "
tail -f /root/XENGPUMiner/miner.log
