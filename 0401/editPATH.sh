#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

# /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/bigred/abc
echo "PATH=$PATH"
echo

echo 1.只保留第一個目錄
echo ${PATH%%:/*}
echo 

echo 2.只保留最後一個目錄
echo ${PATH##/*:}
echo

echo 3.刪除第一個目錄
echo ${PATH#/*:}
echo

echo 4.刪除最後一個目錄
echo ${PATH%:/*}
