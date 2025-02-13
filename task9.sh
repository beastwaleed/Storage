#!/bin/bash

checkPalindrome() {
    local num="$1"
    
    # Base case: If the number has only one or zero digits, it's a palindrome
    if [ ${#num} -le 1 ]; then
        echo "The number is a palindrome."
        return
    fi

    # Get first and last character
    local first="${num:0:1}"
    local last="${num: -1}"

    # Check if first and last characters are different
    if [ "$first" != "$last" ]; then
        echo "The number is NOT a palindrome."
        return
    fi

    # Remove first and last characters and call function recursively
    checkPalindrome "${num:1:-1}"
}


# Call the recursive function
checkPalindrome "$1"

