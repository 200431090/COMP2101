#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#We get the username by the use of environment variable 
uvar="$USER"
#we get the hostname by the help of environment variable 
hostname="$(hostname)"
#With the use of date command we get the current day of the week
day=$(date +%A)
#we get current date by the use of date command
currenttime=$(date +%I:%M\ %p)

###############
# Main        #
###############
# To test the day name use the if else command and also print the custom message according to the name of the current day
if [ "$day" = Monday ];
then
cows="Welcome to planet $hostname, pleasant $uvar!"
elif [ "$day" = Tuesday ];
then
cows="Welcome to planet $hostname, sanguine $uvar!"
elif [ "$day" = Wednesday ];
then
cows="Welcome to planet $hostname, sunny $uvar!"
elif [ "$day" = Thursday ];
then
cows="Welcome to planet $hostname, hilarious $uvar!"
elif [ "$day" = Friday ];
then
cows="Welcome to planet $hostname, good-natured $uvar!"
elif [ "$day" = Saturday ];
then
cows="Welcome to planet $hostname, lighthearted $uvar!"
else;cows="Welcome to planet $hostname, optimistic $uvar!"
fi
cowsay "$cows It is $currenttime on $day ."