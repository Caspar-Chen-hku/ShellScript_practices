#!/bin/bash
allfile="`ls *txt`"
count=0
for file in $allfile
do
word="`wc -w $file | cut -d' ' -f1`"
echo "$file: $word words"
keywords=(`./getWords.sh $file | sort | uniq -c | sort -n -r | head -n 1`)
key=${keywords[1]}
if [ ${keywords[0]} -gt $count ]
then
count=${keywords[0]}
realkey=$key
belong=$file
fi
echo "Keyword: $key"
grep $key $file | head -n 3
echo " "
done
echo "The word is: '$realkey' in $belong"
