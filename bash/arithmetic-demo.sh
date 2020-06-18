#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
# Ask for three numbers from the user by using the read command
read -p "Input 1 ? " firstnum 
read -p "Input 2 ? " secondnum
read -p "Input 3 ? " thirdnum
sum=$((firstnum + secondnum + thirdnum))
# Sum of the three numbers of user is added into a variable
product=$((firstnum * secondnum * thirdnum))
# Product of the three numbers given by user is added into a variable
cat <<EOF
The sum of $firstnum , $secondnum and $thirdnum numbers are $sum .
The product of $firstnum , $secondnum and $thirdnum numbers are $product .
EOF
