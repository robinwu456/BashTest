#!/bin/bash

for((i=7;i<=9;i++)); do
	echo $i
	for((y=3;y<=5;y++)); do
		echo -n $y" "
	done

	echo
done
