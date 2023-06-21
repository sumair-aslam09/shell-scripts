#!/bin/bash
#count=$(wc-w) 
word=$(awk '{print $0}' $1)

for values in $word;
do
	echo "$values | $(wc -w) "	
done

##cat $1 | read line in $1 | wc
