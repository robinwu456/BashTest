#!/bin/bash

function GetHardDiskInfo(){
	hdInfo=$(df -h | grep sda2 | fmt -u | cut -d ' ' -f 2)
}

function GetMemoryInfo(){
	memInfo=$(free -mh | grep Mem | fmt -u | cut -d ' ' -f 2)
}

function GetCpuInfo(){
        cpuInfo=$(cat /proc/cpuinfo | grep "model name" | head -n 1 | cut -d ':' -f 2)
}

GetHardDiskInfo
GetMemoryInfo
GetCpuInfo

echo "硬碟大小:" $hdInfo
echo "記憶體大小:" $memInfo
echo "處理機資訊:" $cpuInfo
