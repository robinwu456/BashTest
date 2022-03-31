#!/bin/bash

while true
do

	clear
	
	echo -e "上網時數?\n  1> 1小時以內\n  2> 1-5小時\n  3> 5小時以上\n\n您的choose 1,2,3?"
	read time
	
	case $time in 
		1)
			echo "很棒"
			break
			;;
		2)
			echo "別忘了要起身運動喔"
			break
			;;
		3)
			echo "半小時眼睛要休息一下喔"
			break
			;;
		*)
			echo "請選1,2,3"
			sleep 1
			;;
	esac

done

echo "thx"

exit 1

