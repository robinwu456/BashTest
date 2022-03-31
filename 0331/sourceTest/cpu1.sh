#!/bin/bash

source ./extendFunc.sh
cpuInfo=$(GetCpuInfo)
echo $cpuInfo
read -p "按任意鍵繼續"
