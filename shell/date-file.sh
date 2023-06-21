#!/bin/bash
echo "No.of days since the year's begining is '$(date +%j)' ."
echo "No.of seconds elapsed since 01/01/1970 is '$(date +%s)' ."

prefix=temp
suffix=$(date +%s)
filename=$prefix.$suffix
echo "Temporary filename = $filename"
exit 0
