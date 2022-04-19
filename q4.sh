#!/bin/bash
read -p "Enter input data: " data
arr=($(echo $data | tr ',' ' '))
# echo ${arr[*]}
len=${#arr[@]}
# echo $len


for (( i=0; i<$len; i++ ))
	do
		for (( j=$i; j <$len; j++ ))
			do
				if [ ${arr[$i]} -gt ${arr[$j]} ];
				then
					temp=${arr[i]}
					arr[$i]=${arr[$j]}
					arr[$j]=$temp
				fi
			done
	done

echo ${arr[*]}		 
