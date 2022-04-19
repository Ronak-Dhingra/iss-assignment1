#!/bin/bash

read -p "Enter string input: " string

len=${#string}

rev_string=""

for (( i=$len-1; i>=0; i-- ))
	do
	rev_string="$rev_string${string:$i:1}"
	done

echo "$rev_string"

echo $rev_string | tr a-y b-z | tr z a | tr A-Y B-Z | tr Z A

rev_half_string=""

for (( i=($len/2)-1; i>=0; i-- ))
	do
	rev_half_string="$rev_half_string${string:$i:1}"
	done

for (( i=($len/2); i < $len; i++ ))
	do
	rev_half_string="$rev_half_string${string:$i:1}"
	done

echo "$rev_half_string"
