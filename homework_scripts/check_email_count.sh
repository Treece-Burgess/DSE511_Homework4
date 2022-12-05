#!/bin/bash

file=$1

count=0
while read line; do
    if [ "X$line" == "X" ]; then
        continue
    elif [[ $line == *"@"* ]]; then
        let count=count+1
    else
        continue
    fi
    
done < ${file}

echo "Total number of email addresses within the file ${1} is ${count}"
