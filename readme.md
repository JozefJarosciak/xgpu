Easily set up a GPU mining server for XENBLOCKS mining. A single line of code installs all dependencies and executes GPU mining. Here's how you get started:

# XENBLOCKS - Effortless GPU Mining on VAST.AI
1. **VAST.AI Mining - vast.ai (verified)**:
   - First, clone this repository to your own public repository.
   - Navigate to your repo, open `vast.sh` (depending on where you mine or vast4.sh or vast8.sh, depending on the number of GPUs) and replace the existing address with your own:
   - ![image](https://github.com/JozefJarosciak/xgpu/assets/3492464/5ddc43df-4e40-44b9-9aa9-4584e2e1b724)
   - Go to Vast.ai, select Templates / Cuda:12.0.1-Devel-Ubuntu20.04 option:
      ![image](https://github.com/JozefJarosciak/xgpu/assets/3492464/cf8fb6fa-3747-4777-aafc-5d025f4f12ce)
   - Then under machines select the image you want. If you select 'unverified machines' you may find those that are a better deal:
      ![image](https://github.com/JozefJarosciak/xgpu/assets/3492464/1d7a937c-8f64-453b-8ff1-b8b169f427df)
   - Now you're all set!
   - Use a single line command below to get a new GPU server up and running (from 0 to full-speed mining with one press of a button).
   - Note: of course replace (JozefJarosciak/xgpu/main/vast.sh, or vash4.sh or vast8.sh) with a path to your repo
     
   For single GPU use vast.sh:
      ```
   sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/vast.sh && sudo chmod +x vast.sh && sudo ./vast.sh
      ```

   For 4 X GPU use vast4.sh:
      ```
   sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/vast4.sh && sudo chmod +x vast4.sh && sudo ./vast4.sh
      ```      

   For 8 X GPU use vast8.sh:
      ```
   sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/vast8.sh && sudo chmod +x vast8.sh && sudo ./vast8.sh
      ```

1.1 **VAST.AI Video DEMO**:
   
[![Video Name](http://img.youtube.com/vi/gCqFkxDgpMQ/0.jpg)](http://www.youtube.com/watch?v=gCqFkxDgpMQ "Video Name")

   
# XENBLOCKS - Effortless GPU Mining on RUNPOD.IO
1. **RUNPOD Mining - runpod.io (unverified)**:
  - Same as above, just update `runpod.sh` file with your address
   ```
   apt update && apt -y install wget && wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/runpod.sh && chmod +x runpod.sh && ./runpod.sh
   ```


# XENBLOCKS - USEFUL COMMANDS 

Tail logs:
```
tail -f /root/XENGPUMiner/miner.log
tail -f /root/XENGPUMiner/xengpuminer.log
tail -f /root/XENGPUMiner/xengpuminer-0.log (to xengpuminer-7.log)
```

Download the latest miner.py file only:
```
wget https://raw.githubusercontent.com/shanhaicoder/XENGPUMiner/main/miner.py
```

Maintenance - this is how you can kill multiple instances when needed
```
pkill -f "xengpuminer"
pkill -f "python3"
```

Start Miner.py in the background (in case you needed to stop it):
```
sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
```

Renaming directory:
```
mv XENGPUMiner XENGPUMiner2
```
