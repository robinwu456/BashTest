#!/bin/bash

declare -i index=1
declare -i num=0

while [ $index -le 10 ]
do
	num=num+index
	index+=1
done

echo $num
