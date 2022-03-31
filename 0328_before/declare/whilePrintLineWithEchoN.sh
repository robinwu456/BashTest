#!/bin/bash

declare -i index=1

while [ $index -le 20 ] 
do
	[ $index != 3 ] && [ $index != 11 ] && echo -n $index" "
	index+=1
done

echo
