#!/bin/bash
startfile=$1
initial=( cat "$startfile" | sed -e '/#/d' | tr -d '/n' |\
	sed -e 's/\./\. /g' -e 's/_/_ /g' )
