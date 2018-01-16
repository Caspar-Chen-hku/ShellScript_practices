#!/bin/bash
all=`ls access*`
for file in $all
do
a=(`grep -E "/products/...\.html" $file | cut -f1,4 | sort | uniq | cut -f2 | sort | uniq -c | sort -n -r | head -n 1`)
echo "$file: ${a[1]}"
echo "Last three product page access:"
grep -E "/products/...\.html" $file | tail -n 3 
echo " "
done