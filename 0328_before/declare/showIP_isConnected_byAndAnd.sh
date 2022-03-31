#!/bin/bash

declare -i index=$1

while [ $index -le $2 ]
do
	ip="192.168.61.$index"
	ping -c 1 -w 1 $ip > /dev/null
	[ $? == 0 ] && echo "$ip connected" || echo "$ip not connected"

	index+=1
done

