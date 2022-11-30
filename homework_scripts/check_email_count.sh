#!/bin/bash

file="email_or_name.txt"

count=0
while read line; do
    if [[ $line == *"@"* ]]; then
        let count=count+1
    else
        sleep 0.5
    fi
    
done < ${file}

echo "Total number of email addresses within the file email_or_name.txt is ${count}"
