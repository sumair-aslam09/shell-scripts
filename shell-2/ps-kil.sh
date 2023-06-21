#!/bin/bash
#list running process
ps aux
read -rp "Enter PID TO KILL: " pid
kill "$pid"
