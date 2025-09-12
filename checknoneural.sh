#!/bin/bash
echo "Checking hkl files for non neural days"

for i in 20180??? 201810??; do 
    echo "day"
    echo $i; 
    cd $i; 
    echo "number of hkl files";
    find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l
    cd ..; 
done
