#!/bin/bash

[ $# -lt 8 ]  &&  echo "請輸入8個參數!" && exit

for((w=$1;w<=$2;w++)); do
	echo "$w>>>"
	for((x=$3;x<=$4;x++)); do
		echo "$x>"
		for((y=$5;y<=$6;y++)); do
			echo -n "$y:"
			for((z=$7;z<=$8;z++)); do
				echo -n "$z "
			done
			echo
		done
	done
	echo
done
