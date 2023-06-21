#!/bin/bash
word="SU'M%A!&IR)"
words=${word//[[:punct:]]/}
#echo $words
wor="S*U^M@A*I!R))   #A@S,.L*A;M"
name=${wor//[[:punct:]]/}
echo "$name"
small=$(echo "$name" | tr '[:upper:]' '[:lower:]')
echo "$small using tr"
aw_sm=$(echo "$name" | awk '{print tolower ($0)}')
echo "$aw_sm  using awk "
trim=$(echo "$wor" | tr -d '[:punct:]')
echo "$trim - using tr"
