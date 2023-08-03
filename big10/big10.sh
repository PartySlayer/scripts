#!/bin/bash

path=${1-/}

findbig() {

 find $path -type f -exec du -h {} + 2>/dev/null|sort -rh|head -n 10 >"big10.txt"
}

findbig "$path"

 echo "the 10 biggest files in $path were stored in big10.txt"
