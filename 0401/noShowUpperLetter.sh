#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

read -e -p "read file: " file

declare -i count=1
cat ./$file | while read line; do
	echo "$count: $line"
	echo "$count: ${line//[A-Z]/}"
	count+=1
done
