#!/bin/bash

# Check if script is being run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi 

function create_user() {
    read -p "Enter username: " username
    read -p "Enter password: " password
    useradd -m -p $(openssl passwd -1 $password) $username
    echo "User $username created"
}

function delete_user() {
    read -p "Enter username to delete: " username
    if id "$username" >/dev/null 2>&1; then
        userdel -r $username
        echo "User $username deleted"
    else
        echo "User $username does not exist"
    fi
}

function change_password() {
    read -p "Enter username to change password: " username
    if id "$username" >/dev/null 2>&1; then
         read -p "Enter new password: " password
        echo "$username:$password" | chpasswd
        echo "Password changed for user $username"
    else
        echo "User $username does not exist"
    fi
}

# Display menu for user options
echo "User Management Menu:"
echo "1. Create User"
echo "2. Delete User"
echo "3. Change Password"
echo "4. Exit"

# Read user input
read -p "Enter option number: " option

# Handle user input
case $option in
    1)
        create_user
        ;;
    2)
        delete_user
        ;;
    3)
        change_password
        ;;
    4)
        # Exit script
        echo "Exiting User Management script"
        exit
        ;;
    *)
        # Handle invalid input
        echo "Invalid option selected"
        ;;
esac
