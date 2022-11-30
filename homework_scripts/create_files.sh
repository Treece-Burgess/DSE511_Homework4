#!/bin/sh

check=10

for i in {0..99}; do
    if [[ $i -lt $check ]]; then   
        touch file0${i}.txt
        echo $i > file0${i}.txt
    else
        touch file${i}.txt
        echo $i > file${i}.txt
    fi
done
