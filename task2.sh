#!/bin/bash

echo "Enter a Number: "
read num

#check if the input is non negative
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
	echo "Error: Please enter a non negative number"
	exit 1

fi

#initialize factoriall to 1
factorial=1

#calculate factorial using for loop
for (( i = 1; i<=num; i++ )); do
	factorial=$((factorial * i))
done

#print the factorial
echo "Factorial of $num is: $factorial"
