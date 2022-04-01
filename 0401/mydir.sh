#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

dir=~/myteam
[ ! -d $dir ] && mkdir $dir || echo $dir"目錄已存在"

for t in $@; do
	path=$dir/$t
	[ ! -d $path ] && mkdir $path || echo $path"目錄已存在"
done
