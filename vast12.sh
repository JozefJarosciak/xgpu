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

sudo sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xca5F023af4F822353A563Ae6a3591bA2024495E8/g' config.conf > /dev/null 2>&1
echo "STEP 8 of 10: Replaced ETH address"

sudo pip install -U -r requirements.txt > /dev/null 2>&1
echo "STEP 9 of 10: Installed Python Requirements"

echo "STEP 10 of 10: Starting Miner & GPU"
sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d0 > xengpuminer-0.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d1 > xengpuminer-1.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d2 > xengpuminer-2.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d3 > xengpuminer-3.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d4 > xengpuminer-4.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d5 > xengpuminer-5.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d6 > xengpuminer-6.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d7 > xengpuminer-7.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d8 > xengpuminer-8.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d9 > xengpuminer-9.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d10 > xengpuminer-10.log 2>&1 &
sleep 1
sudo nohup ./xengpuminer -d11 > xengpuminer-11.log 2>&1 &

echo "-------------------------"
echo "    MINING  XENBLOCKS    "
echo "     https://xen.pub     "
echo "-------------------------"
echo " "
tail -f /root/XENGPUMiner/miner.log
