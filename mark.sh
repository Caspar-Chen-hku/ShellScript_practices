#!/bin/bash
cd submissions
allStudents="`ls`"
for student in $allStudents
do
 if [ -d $student ]
 then
 cd $student
 echo "The result of $student:" >> result.txt
 if [ -e "assign.cpp" ]
 then
 g++ assign.cpp -o assign.o 2> error.txt
 if [ -e "assign.o" ]
 then
 list=`ls ../../testcases`
 for i in $list
 do
 ./assign.o < ../../testcases/$i/input.txt > output.txt
 result=`diff output.txt ../../testcases/$i/correct.txt`
 if [ "$result" ]
 then
 echo "$i:Wrong answer." >> result.txt
 else
 echo "$i:Correct!" >> result.txt
 fi
 done
 else
 echo "Cannot be compiled." >> result.txt
 fi
 fi
 cd ..
 fi
done
