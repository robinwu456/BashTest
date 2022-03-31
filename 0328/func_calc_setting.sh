#!/bin/bash

function Add(){
	result=$(($1+$2))
}

function Sub(){
        result=$(($1-$2))
}

function Multi(){
        result=$(($1*$2))
}

function Div(){
        result=$(($1/$2))
}

read -p "哪兩個數字: " num1 num2
read -p "做哪一種運算[add/sub/multi/div]: " calcMode

case ${calcMode,,} in
	add)
		Add $num1 $num2
		;;
	sub)
		Sub $num1 $num2
		;;
	multi)
		Multi $num1 $num2
		;;
	div)
		Div $num1 $num2
		;;
esac

echo $result
