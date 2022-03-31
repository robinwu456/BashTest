#!/bin/bash

declare -i index=1
declare -i num=0

while [ $index -le 99 ]
do
	echo "192.168.1.$index"
	index+=1
done

