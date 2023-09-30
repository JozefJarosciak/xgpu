```
apt update && apt -y install wget && wget https://raw.githubusercontent.com/JozefJarosciak/xgpu/main/gpu.sh && chmod +x gpu.sh && ./gpu.sh
```


#########################
# OTHER USEFUL COMMANDS #
#########################

Tail logs:
```
tail -f /XENGPUMiner/miner.log
tail -f /XENGPUMiner/xengpuminer.log
```

# Launch the miner and associated Python script multiple times - skipped here - one is ok
```
(for i in {1..1}; do nohup ./xengpuminer -b 350 &> /dev/null & done) &
```

# Maintenance kill multiple instances when needed
```
pkill -f "xengpuminer"
```
