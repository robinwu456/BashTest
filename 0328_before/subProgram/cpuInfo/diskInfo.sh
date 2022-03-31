#!/bin/bash

ans1=$(df -h | grep 'dev/sda3' | fmt -u | cut -d ' ' -f 2)

echo $ans1

read -p "按任意鍵繼續"
