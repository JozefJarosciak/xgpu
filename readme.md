# XENBLOCKS - Effortless GPU Mining (single line of code installs everything)

Easily set up a GPU mining server for XENBLOCKS with just a single command. Here's how you get started:

1. **Clone this Repository**: 
   - First, clone this repository to your own public repository.

2. **Update Your Address**:
   - Navigate to your repo, open `gpu.sh` and replace the existing address with your own

3. **Kickstart Mining**:
   - Now you're all set!
   - Use a single line command below to get a new GPU server up and running (from 0 to full-speed mining with one press of a button).
   - Note: of course replace (JozefJarosciak/xgpu/main/gpu.sh) with path to your repo
   ```
   apt update && apt -y install wget && wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/gpu.sh && chmod +x gpu.sh && ./gpu.sh
   ```
4. **Video DEMO**:
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
tail -f /XENGPUMiner/miner.log
tail -f /XENGPUMiner/xengpuminer.log
```

Maintenance kill multiple instances when needed
```
pkill -f "xengpuminer"
```
