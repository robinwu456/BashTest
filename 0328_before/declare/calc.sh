#!/bin/bash

cmds="
declare no=100
declare sum=1000

a1=$((no+sum))
echo $a1
"

for cmd in $cmds
do
	$cmd
done
