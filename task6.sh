#!/bin/bash

checkFactor(){
	result=$(($1 % $2))
	
	if (( result==0 )); then
	echo "Number: $1 is a factor of Number: $2 and vice versa"
	
	else 
	echo "Number are not factors of each other"
	fi
}

echo "Enter the Factor Number: "
read factor

echo "Enter the Number: "
read number

checkFactor "$factor" "$number"
