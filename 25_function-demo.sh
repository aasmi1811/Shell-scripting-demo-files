#!/bin/bash
#
#
#To make function

function welcomeNote {
	echo "--------------------------"
	echo "--------Welcome-----------"
	echo "--------------------------"
}

#To call function

welcomeNote
welcomeNote
welcomeNote

#Another way to write function

TodayDate () {
	echo "Today's date is:" $(date)
}

TodayDate
TodayDate
TodayDate

