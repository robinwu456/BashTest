#!/bin/bash

[ "$USER" != "root" ] && echo "need root to run" && exit 1
source ./kong.conf
echo $PROJECT_DIR
