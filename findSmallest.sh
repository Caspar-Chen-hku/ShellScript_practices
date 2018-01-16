#!/bin/bash
if [ $# -ne 2 ]
then
echo "wrong arguments"
else
cut -d, -f$2 $1 | sort | head -n1
fi