#!/bin/bash
function test_shadow() {
if [ -e /etc/shadow ];
then
	echo "file exists"
else
	echo "file not exists"
fi
}
test_shadow

