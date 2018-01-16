#!/bin/bash
g++ -std=c++0x -o generator generator.cpp
for ((n=0;n<1000;n++))
do
generator < input.txt >> output.txt
let "n=$n+1"
done
sort -n output.txt | uniq -c | plot.sh
