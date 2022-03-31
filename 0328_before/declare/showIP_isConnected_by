#!/bin/bash

declare -i index=$1

while [ $index -le $2 ]
do
	ip="192.168.61.$index"
	ping -c 1 -w 1 $ip > /dev/null
	if [ $? == 0 ]; then
		echo "$ip connected"
	else
		echo "$ip not connected"
	fi

	index+=1
done

