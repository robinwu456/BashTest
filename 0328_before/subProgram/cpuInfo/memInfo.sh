#!/bin/bash

ans1=$(free -mh | grep Mem | fmt -u | cut -d ' ' -f 2)

echo $ans1

read -p "按任意鍵繼續"
