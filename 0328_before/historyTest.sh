#!/bin/bash

rAns1=3
rAns2=4
rAns3=1
rAns4=1
rAns5=2

clear

score=0

read -p "
1. 為了救愛妾而引清兵入關的明末將領為：
(1) 吳一桂 (2) 吳二桂 (3) 吳三桂 (4) 吳四桂
請選擇：" ans1
if [ ${ans1} == ${rAns1} ]; then
	echo "答對了"
	score=$((score+1))
	sleep 1
	clear
else
	echo -e "答錯了\n出局"
	echo "共答對${score}題"
	exit
fi


read -p "
2. 呈上題，其愛妾是：
(1) 林粉圓 (2) 王湯圓 (3) 張芋圓 (4) 陳圓圓
請選擇：" ans2
if [ ${ans2} == ${rAns2} ]; then
        echo "答對了"
	score=$((score+1))
        sleep 1
        clear
else
        echo -e "答錯了\n出局"
	echo "共答對${score}題"
        exit
fi

read -p "
3. 秦二世時，專擅朝政、指鹿為馬的是：
(1) 趙高 (2) 趙低 (3) 陳高 (4) 陳紹
請選擇：" ans3
if [ ${ans3} == ${rAns3} ]; then
        echo "答對了"
	score=$((score+1))
        sleep 1
        clear
else
        echo -e "答錯了\n出局"
	echo "共答對${score}題"
        exit
fi

read -p "
4. 著有道德經，為道家始祖的是：
(1) 李耳 (2) 李眼 (3) 李鼻 (4) 李口
請選擇：" ans4
if [ ${ans4} == ${rAns4} ]; then
        echo "答對了"
	score=$((score+1))
        sleep 1
        clear
else
        echo -e "答錯了\n出局"
	echo "共答對${score}題"
        exit
fi

read -p "
5. 原為唐高宗之后，後登基為帝，為中國第一個女皇帝的是：
(1) 文則天 (2) 武則天 (3) 文則地 (4) 武則地
請選擇：" ans5
if [ ${ans5} == ${rAns5} ]; then
        echo "答對了"
	score=$((score+1))
        sleep 1
else
        echo -e "答錯了\n出局"
	echo "共答對${score}題"
        exit
fi

echo "共答對${score}題"
