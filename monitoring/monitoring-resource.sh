#!/bin/bash

#####
# Variables
#####
REQUIRED_USER="user_test"
REQUIRED_GROUP="group_test"

#####
# Check user privileges
#####
if [[ $USER != $REQUIRED_USER ]]; then
	echo "The $USER user doesn't have the appropriate permissions to run this script."
	echo "Please check if you run this script as $REQUIRED_USER."
	exit 1
fi

#####
# Usage&Options
#####
usage() { echo "Usage: $0 [-a do smth] [-b do smth] [-c do smth]" 1>&2; exit 1; }

echo "It's working!"
