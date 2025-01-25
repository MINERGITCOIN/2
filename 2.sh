#!/bin/bash

apt update && apt upgrade -f -y

apt install unzip -y

wget https://github.com/SL-x-TnT/OrionClient/releases/download/v.1.3.1.1/linux-x64-standalone.zip

unzip linux-x64-standalone.zip

chmod +x OrionClient

echo > settings.json

cat  << EOF >> settings.json
{
  "Pool": "Excalivator Pool",
  "GPUDevices": [
    0
  ],
  "HasPrivateKey": false,
  "KeyFile": "",
  "PublicKey": "6GnZt5rXPZVKRMZjz8AWCPYD2NCpEgdkLy2k2H5xLNjY",
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
