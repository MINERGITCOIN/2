#!/bin/bash

apt install unzip tmux -y

wget https://github.com/SL-x-TnT/OrionClient/releases/download/v.1.3.1.1/linux-x64-standalone.zip

unzip linux-x64-standalone.zip

chmod +x linux-x64-standalone/OrionClient

echo > linux-x64-standalone/settings.json

cat  << EOF >> linux-x64-standalone/settings.json
{
  "Pool": "Excalivator Pool",
  "GPUDevices": [
    0 1 2 3 4 5 6 7 8 9 
  ],
  "HasPrivateKey": false,
  "KeyFile": "",
  "PublicKey": "PK",
  "MigratedSettings": false,
  "CPUSetting": {
    "CPUHasher": "Disabled",
    "CPUThreads": 4,
    "AutoSetCPUAffinity": true
  },
  "GPUSetting": {
    "GPUHasher": "4090 Optimized",
    "MaxGPUNoncePerBatch": 2048,
    "GPUBlockSize": 512,
    "ProgramGenerationThreads": 0,
    "EnableExperimentalHashers": false
  },
  "VanitySetting": {
    "GPUDevices": [],
    "MaxRAMUsageMB": 1024,
    "VanitySearchFile": "search.txt",
    "VanityOutputFile": "foundWallets.txt",
    "GPUBlockSize": 256,
    "MinimumCharacterLength": 0,
    "VanityThreads": 0
  }
}
EOF
