#!/bin/bash

declare -i sum=0

[ $# -le 1 ] && echo "param error" && exit
for((i=$1;i<=$2;i++)); do
	sum+=i
done

echo $sum
