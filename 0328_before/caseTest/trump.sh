#!/bin/bash

while true
do
	clear
	read -p "喜歡川普嗎?(y/n)" ans

	case $ans in
		y)
			echo "粉絲多一人"
			break
			;;
		Y)
			echo "粉絲多一人"
			break
	                ;;
		n)
			echo "hate多一人"
			break
	                ;;
		N)
	                echo "hate多一人"
			break
	                ;;
		*)
			echo "pleasr enter (y/n)"
			sleep 1
			;;
	esac

done

echo "thx for ans."
