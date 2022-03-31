#!/bin/bash

source ./extendFunc.sh

echo "請選擇哪一種運算?
輸入以下(1-4)"

select calc in "加" "減" "乘" "除"; do
	case $REPLY in
		1)
			Add $1 $2
			break
			;;
		2)
                        Sub $1 $2
                        break
                        ;;
		3)
                        Multi $1 $2
                        break
                        ;;
		4)
                        Div $1 $2
                        break
                        ;;
		*)
			echo "輸入以下(1-4)!再猜一次"
                        ;;
	esac
done
