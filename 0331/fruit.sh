#!/bin/bash

echo "請猜一下我喜歡的水果?
輸入以下(1-4)"

select var in "蘋果" "梨子" "橘子" "西瓜"; do
	if [ $REPLY == 1 ]; then
		echo "恭喜! 你答對了!"
                break
	else
		echo "答錯了!再猜一次"
	fi
done
