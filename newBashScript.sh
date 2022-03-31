#!/bin/bash

[ -f $1.sh ] && echo "$1已存在" && exit
cp /home/bigred/testsh/bashTemplate.sh $1.sh
vim $1.sh
