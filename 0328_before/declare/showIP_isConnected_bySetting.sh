#!/bin/bash

read -p 'start: ' start
read -p 'end: ' end

declare -i index=$start

while [ $index -le $end ]
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

