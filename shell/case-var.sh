#!/bin/bash
read -p "Select any var abc/xyz: " variable
case "$variable" in
	abc) echo "Learn abc" ;;
	xyz) echo "Learn xyz" ;;
	*) echo "select again" ;;
esac
