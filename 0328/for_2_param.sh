#!/bin/bash

[ $# -lt 4 ]  &&  echo "請輸入4個參數!" && exit

for((i=$1;i<=$2;i++)); do
	echo $i
	for((y=$3;y<=$4;y++)); do
		echo -n $y" "
	done

	echo
done
