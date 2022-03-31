#!/bin/bash

while true
do
	read -p "enter fileName:" fileName
	
	if [ -f $fileName ]; then
		echo "program end."
		exit
	else
		echo "file not exist."

		while true
		do
			echo -e "1- fileName\n2- exit"
			read -p "choice:" mode
		
			case $mode in
				1)
					break
					;;
				2)
					exit
					;;
				3)
					;;
			esac
		done
	fi

done
