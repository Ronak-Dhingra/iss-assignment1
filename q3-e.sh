#!/bin/bash
grep -wo '[[:alnum:]]\+' $1 | sort | uniq -cd > intermediate.txt
while read line;
do
    number=$(echo $line | cut -d " " -f1) 
    word=$(echo $line | cut -d " " -f2)
    echo Word: $word - Count of repetition: $number
done < intermediate.txt