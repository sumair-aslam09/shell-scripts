#!/bin/bash
#extract columns 1 & 3 from file

awk -F ':' '{print $1,$3}' /etc/passwd
