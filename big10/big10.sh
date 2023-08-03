#!/bin/bash

path=${1-/}
err=$(find "$path" -type f 2>&1|grep "Permission denied")

big10=$(find "$path" -type f 2>&1|grep -v "Permission denied"|du -h|sort -h|head -n 10)

if [ ! -z "$err" ]; then
   echo "Retry with root privilegies"
else
 echo  $big10>"$path+/big10.txt" && echo "the 10 biggest files were stored in big10.txt"
