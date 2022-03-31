#!/bin/bash

while true
do
	echo -e "1- fileName\n2- exit"
	read choice

	case $choice in
		1)
			read -p "enter fileName:" fileName
			if [ -f $fileName ]; then
				exit
				break
			else
				echo "file not exist."
			fi
			;;
		2)
			exit
			;;
	esac
done
			
