#!/bin/bash

declare -i zStart=$7
declare -i zEnd=$8
declare -i yStart=$5
declare -i yEnd=$6
declare -i xStart=$3
declare -i xEnd=$4
declare -i wStart=$1
declare -i wEnd=$2

declare -i z=$zStart
declare -i y=$yStart
declare -i x=$xStart
declare -i w=$wStart

w=$wStart
while(($w<=$wEnd)); do
	echo $w">>>"

	x=$xStart
	while(($x<=$xEnd)); do
		echo $x">"
		
		y=$yStart
		while(($y<=$yEnd)); do
			echo -n $y":"
			
			z=$zStart
			while(($z<=$zEnd)); do
				echo -n $z" "
				z+=1
			done

			echo
			y+=1
		done
		x+=1
	done

	echo
	w+=1
done
