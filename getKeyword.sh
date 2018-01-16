#!/bin/bash
if [ $# -ge 1 ]
then
keyWordCount=(`./getWords.sh "$1" | sort | uniq -c | sort -n -r | head -n 1`)
echo ${keyWordCount[1]} ${keyWordCount[0]}
fi