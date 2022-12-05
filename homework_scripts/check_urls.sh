#!/bin/bash

#file="urls.txt"
file=$1

while read line; do
    if [ "X$line" == "X" ]; then
        continue 
    elif wget -q --method=HEAD $line; then
        echo "EXISTS: ${line}"
    else
        continue
    fi

done < ${file}

