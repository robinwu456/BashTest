#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

while read line; do
	echo $line | cut -d '.'
done < 5.txt
