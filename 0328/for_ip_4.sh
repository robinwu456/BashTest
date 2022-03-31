#!/bin/bash

[ $# -lt 8 ]  &&  echo "請輸入8個參數!" && exit

for((w=$1;w<=$2;w++)); do
	for((x=$3;x<=$4;x++)); do
		for((y=$5;y<=$6;y++)); do
			for((z=$7;z<=$8;z++)); do
				echo "$w.$x.$y.$z"
			done
		done
	done
done
