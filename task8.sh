#!/bin/bash

# Recursive function to reverse the array
recursive() {
    local index=$1
    if [ $index -lt 0 ]; then
        return  # Base case: stop when index is less than 0
    fi
    echo -n "${arr[$index]} "  # Print the current element
    recursive $((index - 1))  # Recursive call for the previous element
}

# Read array from user input
echo "Enter space-separated elements of the array:"
read -a arr

# Get array length
length=${#arr[@]}

# Print reversed array using recursion
echo -n "Reversed Array: "
recursive $((length - 1))
echo  # Move to a new line

