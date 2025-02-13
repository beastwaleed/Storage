#!/bin/bash

echo "Select a Programming Language:"

select languages in "Python" "Java" "C++" "Javascript" "Exit"

do
case $languages in
	"Python") echo "You Selected Phython Language";;
	"Java") echo "You selected Java Language";;
	"C++") echo "You selected C++ language";;
	"Javascript") echo "You selected Javascript Language";;
	"Exit") echo "Exiting"
		break;;
	"*") echo "Invalid Choice";; 
esac
done
