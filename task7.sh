#!/bin/bash

countArgs(){
	echo "Total Number of arguments: $#"
}

Factorial(){
    if [ "$1" -le 1 ]; then
        echo 1
    else
        prev=$(Factorial $(( $1 - 1 )))  # Recursive call
        echo $(( $1 * prev ))  # Multiply current number by factorial of (number - 1)
    fi
}

countArguments "$@"

for num in "$@"; do

        fact=$(Factorial "$num")
        echo "Factorial of $num is: $fact"
        
done
