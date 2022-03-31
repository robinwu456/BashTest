#!/bin/bash

declare -i index=$1
declare -i num=0

while [ $index -le $2 ]
do
	if [ $((index%2)) == 0 ]; then
		num=num+index
	fi
	index+=1
done

echo $num
