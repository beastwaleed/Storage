#!/bin/bash

if [ $# -lt 2 ]; then
	echo "You Should enter more than 2 numbers"
	exit 1	# exit the file with an error code

fi

# Initialize sum to 0
sum=0

# loop through all the arguments and add them to the sum
for num in "$@"; do
	sum=$((sum + num))
done

#calculating average
average=$((sum/$#))

#displaying the average
echo "Average: $average"
