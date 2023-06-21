#!/bin/bash
declare -A word_counts

while read -r line;
do
	words=($line)
	for word in "${words[@]}";
	do
		word=$(echo $word | tr -d  '[:punct:]')
		word=$(echo $word | tr '[:lower:]' '[:upper:]')
		((word_counts[$word]++))
		
	done
done < $1

#for word in "${!word_counts[@]}" ;
#do
#	printf "%d: %s\n" "${word_counts[$word]}" "$word"
#done | sort -rn
echo "Word     Count"
echo "--------------"


for word in "${!word_counts[@]}";
do
	count=${word_counts[$word]}
	echo "$word     $count"
done
