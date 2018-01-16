#!/bin/bash
grep -E "/products/...\.html" $1 | cut -f1,4 | sort -k 1,1 -k 2,2 | uniq
