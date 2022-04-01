#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

read -e -p "read file: " file

[ ! -f $file ] && echo "$file 檔案不在" && exit

while read line; do
	echo ${line^^} | cut -d ' ' -f 2
	sleep 1
done < $file
