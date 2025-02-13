#!/bin/bash

check_even_odd(){
	num=$1 #storing the parameter in num variable
	
	if (( num % 2 == 0 )); then
	echo "Number is Even"
	
	else
	echo "Number is Odd"
	fi
	
}

if [ $# -ne 1 ]; then
echo "Enter One Number at a time"
exit 1
fi

check_even_odd "$1"
