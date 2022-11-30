#!/bin/bash

file="urls.txt"

while read line; do
    if wget -q --method=HEAD $line; then
        echo "EXISTS ${line}"
    else
        continue
    fi

done < ${file}

