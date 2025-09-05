#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l
printf "\n"

printf "#===========================================================\n"
printf "Start Times\n"
head -1 *.out
printf "\n"

printf "End Times\n"
tail -n 5 *.out
printf "\n"

printf "#===========================================================\n"
