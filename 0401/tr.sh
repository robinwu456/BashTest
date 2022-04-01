#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

path=$(echo $PATH | tr ":" " ")

for p in $path; do
	echo $p
done
