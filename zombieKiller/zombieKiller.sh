#!/bin/bash

echo "All zombie processes are going to be killed"

pid=$( ps -ef |grep "<defunct>"|cut -d " " -f 2)

if [ -z "$pid" ]; then
	echo "There are no zombie processes"
else
kill -9 $pid && echo "All zombie processes were successfully killed"
fi
