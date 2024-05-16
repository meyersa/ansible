#!/bin/bash

# Check if the script is run by the root user
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Get the username of the current user
current_user=$(logname)

# Add the current user to the sudo group if not already a member
usermod -aG sudo $current_user

# Backup the sudoers file
cp /etc/sudoers /etc/sudoers.bak

# Add a sudoers configuration file for the current user
echo "$current_user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

echo "Passwordless sudo access granted for $current_user"
