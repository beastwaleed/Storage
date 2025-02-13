#!/bin/bash

#function to convert binary to decimal

#finction to convert binary to decimal
binary_to_decimal() {
	echo "ibase=2; $1" | bc
}

#function to convert decimal to binary
decimal_to_binary(){
echo "obase=2; $1" | bc
}

#Prompt the user for two binary numbers
echo "Enter the first binary number: "
read binary1

echo "Enter the second binary number: "
read binary2

#validate inputs
if ! [[ "$binary1" =~ ^[01]+$ ]] || ! [[ "$binary2" =~ ^[01]+$ ]]; then
	echo "Error: Please enter valid binary numbers (only 0d and 1s)."
	exit 1
fi

#convert binary to decimal
decimal1=$(binary_to_decimal "$binary1")
decimal2=$(binary_to_decimal "$binary2")

#perform logical operations
and_result=$((decimal1 & decimal2))
or_result=$((decimal | decimal2))
not_result1=$((~decimal1))
not_result=$((~decimal2))

not_result1=$((not_result1 & ((1 << ${#binary1}) - 1)))
not_result2=$((not_result2 & ((1 << ${#binary2}) - 1)))

#convert results back to binary
and_binary=$(decimal_to_binary "$and_result")
or_binary=$(decimal_to_binary "$or_result")
not_binary1=$(decimal_to_binary "$not_result1")
not_binary2=$(decimal_to_binary "$not_result2")

#display results
echo "Logical AND of $binary1 and $binary2 is: $and_binary"
echo "Logical OR of $binary1 and $binary2 is: $or_binary"
echo "Logical NOT of $binary1 is: $not_binary1"
echo "Logical NOT of $binary2 is: $not_binary2"


