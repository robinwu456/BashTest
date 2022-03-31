#!/bin/bash

declare -i index=$1

while [ $index -le $2 ]
do
	ip="192.168.61.$index"
	echo "$ip"
	index+=1
done

