#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "We have started processing..."
# roll the dice and save the results
bias=1
range=6
# Using the variable of the range or bias the dice is roll
dice1=$(( RANDOM % range + bias ))
dice2=$(( RANDOM % range + bias ))
sum=$(( dice1 + dice2 )) # in this the total sum of the dice is outputted 
average=$(( sum / 2 )) # In this we get the average of the dice
# Shows the total summary of the dice which was rolled and it’s outcome
echo "Rolled two times $dice1, $dice2 and a sum is $sum"
echo "Rolled two times $dice1, $dice2 and an average is $average"
