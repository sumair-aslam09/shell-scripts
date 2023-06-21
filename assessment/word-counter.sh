<< COMMENT
Write a bash script that takes a text file (passed as a command-line argument) and counts the frequency of each word in the file. The script should output each unique word along with its frequency.
COMMENT
#!/bin/bash

#Check if a filename is provided in a command line argument
if [ $# -eq 0 ];
then
	echo "Error:Please provide a filename as an argument"
	exit 1
fi

filename=$1

#Check if the file exists
if [ ! -f "$filename" ];
then
	echo "Error: File '$filename' doesn't exist."
	exit 1
fi

#Declare an array to store the frequency (count) of each word from the text file.

declare -A word_counts

#Read the file 
while read -r line;
do
	#split the line into words
	words=($line)

	#Iterate over each word & update the count
	for word in "${words[@]}";
       	do
		#Remove punctuation
		word=$(echo "$word" | tr -d '[:punct:]')
        
        	#convert the word to lowercase for case-insensitive
		word=$(echo "$word" | tr '[:upper:]' '[:lower:]')
	

		#Increment the count for the word
		((word_counts[$word]++))
	done
done < "$filename"

#Print the word counts in descending order of frequency
for word in "${!word_counts[@]}";
do
	printf "%d: %s\n" "${word_counts[$word]}" "$word"
done | sort -rn
