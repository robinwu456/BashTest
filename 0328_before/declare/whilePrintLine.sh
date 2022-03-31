#!/bin/bash

declare -i index=1
str=""

while [ $index -le 20 ]
do
	if [ $index != 3 ] && [ $index != 11 ]; then
		#str+=" "$index
		str=$str" "$index
	fi
	index+=1
done

echo $str
