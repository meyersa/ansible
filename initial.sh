#!/bin/bash

# Check if the script is run by the root user
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Define the username and SSH key URL
username="ansible"
ssh_key_url="https://raw.githubusercontent.com/meyersa/ansible/main/ansible.pub"

# Create the user if it doesn't exist
if ! id -u $username >/dev/null 2>&1; then
    useradd -m -s /bin/bash $username
    echo "User $username created."
else
    echo "User $username already exists."
fi

# Add the user to the sudo group
usermod -aG sudo $username

# Create .ssh directory if it doesn't exist
home_dir=$(eval echo ~$username)
ssh_dir="$home_dir/.ssh"
mkdir -p $ssh_dir
chown $username:$username $ssh_dir
chmod 700 $ssh_dir

# Fetch the SSH key and add it to authorized_keys
curl -s $ssh_key_url -o $ssh_dir/authorized_keys
chown $username:$username $ssh_dir/authorized_keys
chmod 600 $ssh_dir/authorized_keys

# Backup the sudoers file
cp /etc/sudoers /etc/sudoers.bak

# Add a sudoers configuration file for the ansible user
echo "$username ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

echo "User $username created and granted passwordless sudo access."
