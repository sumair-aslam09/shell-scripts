#!/bin/bash
old_path=/usr/local/bin=/usr/bin=/bin
new_path=${old_path#*=}

echo "old path $old_path"
echo "new path $new_path"
