#!/bin/bash

function Add(){
	result=$(($1+$2))
}

echo "第1個數字:$1   第2個數字: $2"
Add $1 $2
echo "兩數字相加為: "$result
