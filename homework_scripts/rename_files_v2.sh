#!/bin/bash


for f in `ls *.txt`; do
    if [[ $file == *"file0"* ]]; then
        newf=`echo $f | sed -e 's/file0/file000/'`
        mv $f $newf
    else 
        newf=`echo $f | sed -e 's/file/file00/'`
        mv $f $newf
    fi
done
