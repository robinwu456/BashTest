#!/bin/bash

read -p "start: " start
read -p "end: " end

declare -i index=$start
declare -i num=0

while [ $index -le $end ]
do
	if [ $((index%2)) == 1 ]; then
		num=num+index
	fi
	index+=1
done

echo $num
