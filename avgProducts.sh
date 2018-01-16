#!/bin/bash
all=`ls *log`
line=0
for file in $all
do
let "line=$line+`cut -f4 $file | grep -E "/products/...\.html" | sort | uniq | wc -l`"
done
num=`ls *log | wc -w`
let "line=$line/$num"
echo "Average access: $line"