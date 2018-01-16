#!/bin/bash
if [ $# -ge 2 ]
then
all=`cat $2`
b="`cat $2 | grep -E '[a-zA-Z]+'`"
for word in $b
do
x="${word%%$1*}"
  [[ $x = $word ]] && index=-1 || index=${#x}
if [ $index -eq -1 ]
then
echo $word
else
echo -e ${word:0:index}"\e[1m$1\e"[m
fi
done
fi