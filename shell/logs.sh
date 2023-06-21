#!/bin/bash
LOG_DIR=/var/log
ROOT_ID=0
LINES=50
EX_CD=86
EX_NR=87

if [ "$UID" != "$ROOT_ID" ];
then
	echo "must be root to run the script"
	exit $EX_NR
fi

if [ -n "$1" ];
then
	lines="$1"

else
	lines="$LINES"
fi

cd $LOG_DIR

if [ "$PWD" != "$LOG_DIR" ];
then
	echo "cant change to $LOG_DIR"
	exit "$EX_CD" 
fi


tail -n $lines bootstrap.log > log-file
cat /dev/null > log-file # > log-file  truncate -s 0 log-file : > log-file
echo "Logs file cleaned"
du -sh log-file
exit 0



