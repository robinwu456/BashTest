#!/bin/bash

[ $# -le 1 ] && echo "param error" && exit

for((i=$1;i<=$2;i++)); do
	echo -n "z"
	sleep 0.2
done
