#!/bin/bash

read -p "score?" score
if [ "$score" -gt 60 ]; then
        echo "path"
else
        echo "no pass"
fi
