#!/bin/bash

while :
	do
		echo "Please enter whole website name (To exit, press 'q'): "
		read page
		echo
		if [ -z $page ]; then
			echo "There is a nothing. Please, try again."
		elif [ "$page" == "q" ] || [ "$page" == "Q" ]; then
			echo "Exiting."
		exit 1
		else
			result=$(curl $page)
			echo
		fi
	done
	
