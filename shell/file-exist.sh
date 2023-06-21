#!/bin/bash
filename=$1
echo hello; echo there

if [ -x $filename ]; then
	echo "$filename exists"; cp $filename $filename.bkp
	cat $filename.bkp
else
	echo "$filename doesn't exists"; touch $filename
fi; echo "File test complete"
