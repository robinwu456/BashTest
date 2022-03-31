#!/bin/bash

for cmd in $@
do
	echo "*** The output of $command command >"
	$cmd
	echo
done
