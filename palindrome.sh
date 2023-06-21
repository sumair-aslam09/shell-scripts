#!/bin/bash

input="$1"
reverse=$(echo "$input" | rev)
# Remove spaces, punctuation, and convert to lowercase
input_normalized=$(echo "$input" | tr -d '[:space:]' | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')
reverse_normalized=$(echo "$reverse" | tr -d '[:space:]' | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')

if [[ "$input_normalized" == "$reverse_normalized" ]]; then
	  echo "The input string '$input' is a palindrome."
  else
	    echo "The input string '$input' is not a palindrome."
fi
