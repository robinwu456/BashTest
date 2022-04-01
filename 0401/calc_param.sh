#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

declare -i sum

for num in $@; do
	sum+=$num
done

echo $sum
