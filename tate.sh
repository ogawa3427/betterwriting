#!/bin/bash
filename=$1
#cho $filename
while read -r line; do
	echo $line
done < $filename
exit