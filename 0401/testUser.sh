#!/bin/bash

source /home/bigred/testsh/extendFunc.sh

a=$(VerifyArgsCount $# 2)
echo $a

#[ $(VerifyArgsCount $# 2) -eq 1 ] && echo error || echo correct
