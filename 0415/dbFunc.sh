#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

echo '
1.建立批次帳號
2.使用者給帳號密碼
3.使用者修改密碼
4.批次刪除帳號
5.刪除帳號
6.檢視所有使用者
7.離開'
read -p "選1-7: " ans

case $ans in
	1)
		read -p "建立帳號開頭: " accountstart
		read -p "建立$accountstart幾號開始: " start
		read -p "到$accountstart幾號結束: " end
		./std_user_and_privilege.sh $accountstart $start $end
		./dbFunc.sh
		;;
	2)
		./std_ask.sh
		./dbFunc.sh
		;;
	3)
		./changePwd.sh
		./dbFunc.sh
		;;
	4)
		read -p "建立帳號開頭: " accountstart
		read -p "刪除$accountstart幾號開始: " start
                read -p "到$accountstart幾號結束: " end
		./std_delete.sh $accountstart $start $end
		./dbFunc.sh
		;;
	5)
		read -p "刪除帳號: " account
		sudo mariadb -e "drop user '$account'@'localhost'"
		./dbFunc.sh
		;;
	6)
		sudo mariadb -e "select user,host,password,select_priv,insert_priv from mysql.user;"
		./dbFunc.sh
		;;
	7)
		exit
		;;
	*)
		echo '請輸入1-7'
		./dbFunc.sh
		;;
esac
