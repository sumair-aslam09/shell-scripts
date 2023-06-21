#!/bin/bash
echo "Dir in /home"
find /home -type d
echo "--------------"
echo "Empty dir in /home"
find /home -type d -empty
echo "---------------"
echo "modified dir within 7 days"
find /home/sumair -type d -mtime -7
echo "---------------"
