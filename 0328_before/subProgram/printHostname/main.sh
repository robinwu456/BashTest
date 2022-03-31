#!/bin/bash

while true
do
	clear	
	echo -e "選單\n1.目前使用者\n2.家目錄\n3.主機名稱\n4.離開\n"	
	read number
	
	case $number in 
		1)
			./prog1.sh
			;;
		2)
	                ./prog2.sh
	                ;;
		3)
	                ./prog3.sh
	                ;;
		4)
	                exit
	                ;;
		*)
			sleep 1
			echo -e "請選1,2,3,4"
			;;
	esac

done
