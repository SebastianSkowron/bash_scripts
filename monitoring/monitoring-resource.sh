#!/bin/bash

#####
# Variables
#####
REQUIRED_USER="user_name"
REQUIRED_GROUP="group_name"

#####
# Check user prvileges
#####
# Check current user
CURRENT_USER=$(whoami)

# Check user group
if id -nG "$CURRENT_USER" | grep -qw "$REQUIRED_GROUP"; then
        # Check if current user is needed one
        if [ "$CURRENT_USER" -eq "$REQUIRED_USER" ]; then
                echo "User has the appropriate permissions."
                # Rest of instructions
        else
                # User is wrong
                echo "User doesn't have the appropriate permissions."
                echo "Please check if you run this script as $REQUIRED_USER."
                exit 1
        fi
else
        # User doesn't have permissions
        echo "User doesn't have the appropriate permissions."
        echo "Please check if you run this script with $REQUIRED_GROUP permissions."
        exit 1
fi
