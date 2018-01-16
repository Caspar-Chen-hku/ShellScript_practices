#!/bin/bash
all=`cat $1`
b="`cat $1 | grep -E '[a-zA-Z]+'`"
for word in $b
do
echo $word
done

