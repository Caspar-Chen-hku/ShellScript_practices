#!/bin/bash
allfiles=`ls 7Eleven_00123*`
for data in $allfiles
do
echo "$data:"
cut -d, -f2 $data > temp.txt
sort -n -r temp.txt | uniq -c > output.txt
sort -n -r output.txt > final.txt
head -n 3 final.txt > finally.txt
cat finally.txt
done
