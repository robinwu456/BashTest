#!/bin/bash

read -p "Hit a key, then hit return." keyPress

case $keyPress in 
	[[:lower:]])
		echo "lower";;
	[[:upper:]])
		echo "uppper";;
	[0-9])
		echo "num";;
	[a-z])
		echo "word";;
esac
		
