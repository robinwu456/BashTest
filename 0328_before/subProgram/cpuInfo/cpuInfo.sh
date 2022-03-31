#!/bin/bash

ans1=$(cat /proc/cpuinfo | grep 'model name' | head -n 1 | fmt -u | cut -d ':' -f 2)

echo $ans1

read -p "按任意鍵繼續"
