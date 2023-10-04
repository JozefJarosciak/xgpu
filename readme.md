# XENBLOCKS - Effortless GPU Mining

Easily set up a GPU mining server for XENBLOCKS mining. A single line of code installs all dependencies and executes GPU mining. Here's how you get started:

1. **Clone this Repository**: 
   - First, clone this repository to your own public repository.

2. **Update Your Address**:
   - Navigate to your repo, open `gpu.sh` and replace the existing address with your own:
   - ![image](https://github.com/JozefJarosciak/xgpu/assets/3492464/5ddc43df-4e40-44b9-9aa9-4584e2e1b724)


3. **Kickstart Mining - runpod.io (unverified)**:
   - Now you're all set!
   - Use a single line command below to get a new GPU server up and running (from 0 to full-speed mining with one press of a button).
   - Note: of course replace (JozefJarosciak/xgpu/main/gpu.sh) with path to your repo
   ```
   apt update && apt -y install wget && wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/gpu.sh && chmod +x gpu.sh && ./gpu.sh
   ```

3. **Kickstart Mining - vast.ai (verified)**:   
   vast.ai (single GPU):
      ```
   sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/vast.sh && sudo chmod +x vast.sh && sudo ./vast.sh
      ```

   or vast4.ai (for 4 X GPU):
      ```
   sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/vast4.sh && sudo chmod +x vast4.sh && sudo ./vast4.sh
      ```      

   or vast8.ai (for 8 X GPU):
      ```
   sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/vast8.sh && sudo chmod +x vast8.sh && sudo ./vast8.sh
      ```



   
3. **Video DEMO**:
   - Follow along with the video demonstration below to set up your mining server:
   [![Video Demo](https://img.youtube.com/vi/oXrj8RKKyak/0.jpg)](https://youtu.be/oXrj8RKKyak)


# XENBLOCKS - Effortless Multi-GPU Mining
Same idea as above, but now you can run multi-GPU with one command (if you order such a setup).
```
apt update && apt -y install wget && wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/gpu2.sh && chmod +x gpu2.sh && ./gpu2.sh
```

# XENBLOCKS - USEFUL COMMANDS 

Tail logs:
```
tail -f /root/XENGPUMiner/miner.log
tail -f /root/XENGPUMiner/xengpuminer.log
tail -f /root/XENGPUMiner/xengpuminer-0.log (to xengpuminer-7.log)
wget https://raw.githubusercontent.com/shanhaicoder/XENGPUMiner/main/miner.py
sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
```

Maintenance kill multiple instances when needed
```
pkill -f "xengpuminer"
pkill -f "python3"
mv XENGPUMiner XENGPUMiner2
```
