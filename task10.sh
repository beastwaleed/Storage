#!/bin/bash

# Function to split characters and sort
SplitCharacters() {
    local str="$1"
    local len=${#str}

    # Base case: if string length is 1, return it
    if [ "$len" -le 1 ]; then
        echo "$str"
        return
    fi

    # Sort the characters recursively
    local first="${str:0:1}"
    local rest_sorted=$(SplitCharacters "${str:1}")

    # Insert first character in sorted position
    echo "$first$rest_sorted" | fold -w1 | sort | tr -d '\n'
}

# Function to check if two sorted strings are the same
checkAnagrams() {
    local str1_sorted=$(SplitCharacters "$1")
    local str2_sorted=$(SplitCharacters "$2")

    if [ "$str1_sorted" = "$str2_sorted" ]; then
        echo "Strings '$1' and '$2' are anagrams."
    else
        echo "Strings '$1' and '$2' are NOT anagrams."
    fi
}

# Call function to check anagrams
checkAnagrams "$1" "$2"

