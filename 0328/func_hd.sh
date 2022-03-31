#!/bin/bash

function GetHardDiskInfo(){
	hdInfo=$(df -h | grep sda2 | fmt -u | cut -d ' ' -f 2)
}

GetHardDiskInfo
echo "硬碟大小:" $hdInfo
