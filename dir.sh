#!/bin/bash
if [ -d /home/sumair/shell ];
then
	echo "Dir exists"
else
	mkdir -p /home/sumair/shell
	echo "Shell dir created"
fi
