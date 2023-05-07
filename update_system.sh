#!/bin/bash

# Check if the script is being run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Aborting."
   exit 1
fi

# Prompt user to confirm system update
read -p "Are you sure you want to update the system? [y/n]: " choice
if [[ ! $choice =~ ^[Yy]$ ]]; then
    echo "Aborting."
    exit 1
fi

echo "Checking for updates..."
apt update -y
updates_available=$(apt list --upgradable 2>/dev/null | wc -l)
if [[ $updates_available -lt 2 ]]; then
    echo "No updates available. Aborting."
    exit 1
fi

# Create a backup of important files
echo "Creating backup..."
mkdir -p /root/backup/
cp -r /etc/apt /root/backup/

# Update the system
echo "Performing update..."
apt upgrade -y
error_count=$(apt-get --just-print upgrade | grep -c "^Conf\|^Err")
if [[ $error_count -gt 0 ]]; then
    echo "There were errors during the update process. Please check the output above."
else
    echo "Update complete."
    # Check if any updates require a reboot
    reboot_required=$(needs-restarting -r 2>/dev/null | grep -c "Reboot is required")
    if [[ $reboot_required -gt 0 ]]; then
        read -p "A reboot is required to complete the update. Do you want to reboot now? [y/n]: " choice
        if [[ $choice =~ ^[Yy]$ ]]; then
            reboot
        else
            echo "Please reboot the system to complete the update."
        fi
    fi
fi
