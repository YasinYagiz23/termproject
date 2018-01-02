#!/bin/bash

echo "Enter a file"
read file

if [ ! -e "$file" ]; then
	echo "No such file..."
	echo "Exiting"
	exit 1
fi

echo
echo "Showed what it is writen in the file you entered: "
echo
cat $file
echo

line=$( wc -l <"$file" )
word=$( wc -w <"$file" )
char=$( wc -c <"$file" )

echo "how many lines: $line" 
echo "how many words: $word"
echo "how many whole chars: $char"
echo
echo "******************************"


echo "Please enter a character to find which lines have it." 
read character
echo "This character is in that/these line(s):"
echo
hma=$( grep -n "$character" $file )
echo "$hma"
