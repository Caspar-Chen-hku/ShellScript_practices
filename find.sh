#!/bin/bash
cd quotations
all=`ls *qua`
least=1000000
for file in $all
do
price=`grep $1 $file | cut -d: -f2`
if [ $price -lt $least ]
then
least=$price
fi
done
echo $least