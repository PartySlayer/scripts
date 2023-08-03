#!/bin/bash

path=${1-/}
err=$(find "$path" -type f 2>&1|grep "Permission denied")

big10=$(find "$path" -type f 2>&1|grep -v "Permission denied"|du -h|sort -h|head -n 10)

if [ ! -z "$err" ]; then
   echo "Retry with root privilegies"
elif [ -e "$path+/big10.txt" ]; then
 echo  $big10>>"$path+/big10.txt" && echo "the 10 biggest files were stored in big10.txt"
else
   touch "$path/big10.txt" 2>&1 && echo $big10>>"$path/big10.txt" && echo "the 10 biggest files were stored in big10.txt"
fi
