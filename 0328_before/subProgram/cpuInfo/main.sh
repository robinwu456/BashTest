#!/bin/bash

while true
do
	clear
	echo -e "機器規格\n1. cpu\n2. memory\n3. hard disk\n4. exit"
	read ans
	
	case $ans in
		1)
			./cpuInfo.sh
			;;
		2)
			./memInfo.sh
			;;
		3)
			./diskInfo.sh
			;;
		4)
			exit
			;;
		*)
			echo 'plz enter 1,2,3,4'
			sleep 2
			;;
	esac
done
