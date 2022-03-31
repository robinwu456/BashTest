#!/bin/bash

function Add(){
	result=$(($1+$2))
}

read -p '請輸入第1個數字: ' num1
read -p '請輸入第2個數字: ' num2

echo "第1個數字:$num1   第2個數字: $num2"
Add $num1 $num2
echo "兩數字相加為: "$result
