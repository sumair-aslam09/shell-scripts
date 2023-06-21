#!/bin/bash

# Check if a file name is provided as an argument
if [ $# -eq 0 ]; then
	  echo "Error: Please provide a file name as an argument."
	    exit 1
fi

filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
	  echo "Error: File '$filename' does not exist."
	    exit 1
fi

# Read the file, count the frequency of each word, and store it in an associative array
declare -A word_counts

while read -r line; do
	  # Split the line into words
	    words=($line)

	      # Iterate over each word and update the count
	        for word in "${words[@]}"; do
			    # Remove any leading or trailing punctuation
			        word=${word//[[:punct:]]/}

				    # Convert the word to lowercase for case-insensitive counting
				        word=${word,,}

					    # Increment the count for the word
					        ((word_counts[$word]++))
						  done
					  done < "$filename"

					  # Print the word counts in descending order of frequency
					  for word in "${!word_counts[@]}"; do
						    printf "%d: %s\n" "${word_counts[$word]}" "$word"
					    done | sort -rn

