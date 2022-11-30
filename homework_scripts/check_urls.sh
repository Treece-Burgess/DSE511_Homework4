#!/bin/bash

file="urls.txt"

while read line; do
    if wget -q --method=HEAD $line; then
        echo "EXISTS ${line}"
    else
        echo "Does not exist"
    fi

done < ${file}

