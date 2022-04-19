#!/bin/bash
while read -r line;
do
	if [[ $line == *"~"* ]];
	then
		author=$(echo $line | cut -d "~" -f2)
        quote=$(echo $line | cut -d "~" -f1 | awk '{$1=$1};1')
        echo $author once said, \"$quote\" 

	else
		echo $line
	fi 
done < quotes.txt > speech.txt