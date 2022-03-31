#!/bin/bash

echo "請猜一下我喜歡的水果?
輸入以下(1-4)"

select var in "蘋果" "梨子" "橘子" "西瓜"; do
	case $REPLY in
		1)
			echo "恭喜! 你答對了!"
			break
			;;
		2)
			echo "答錯了!再猜一次"
			;;
		3)
                        echo "答錯了!再猜一次"
                        ;;
		4)
                        echo "答錯了!再猜一次"
                        ;;
		*)
                        echo "輸入以下(1-4)!再猜一次"
                        ;;
	esac
done
