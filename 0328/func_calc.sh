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

case $1 in
	add | Add)
		Add $2 $3
		echo -n "Add: "
		;;
	sub | Sub)
		Sub $2 $3
		echo -n "Sub: "
		;;
	multi | Multi)
		Multi $2 $3
		echo -n "Multi: "
		;;
	div | Div)
		Div $2 $3
		echo -n "Div: "
		;;
esac

echo $result
