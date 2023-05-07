#!/bin/bash

# This script can be used to automate the backup and restore of important files and directories on a Linux system.

# Set the backup origin and destination directories
#backup_origin="/home/steve/backup_origin"
#backup_dest="/home/steve/backup_dest"

# Set the restore origin and destination directories
#restore_origin=$backup_dest
#restore_dest=$backup_origin

# Set the name of the backup file
# backup_file="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
#files="origin_file.txt"

# echo "Enter the name of the backup file to restore:"
# read restore_file
# restore_file=""

# Backup function
function backup {
    echo "Please enter backup origin folder:"
    read backup_origin

    echo "Please enter backup destination folder:"
    read backup_dest

    echo "Please enter folder / file to backup:"
    read files
    
    backup_origin_path="$backup_origin/$files"
    backup_dest_path="$backup_dest/$files"

    if ! ([ -e $backup_origin_path ] && [ -r $backup_origin_path ]); then
        echo "File $files doesn't exist in $backup_origin or not readable"
    elif ! ([ -e $backup_dest_path ] && [ -r $backup_dest_path ]); then 
        cp $backup_origin_path $backup_dest_path
        echo "Backup files $files from $backup_origin to $backup_dest successfully"
    else
        echo "Backup files already exist in $backup_dest, do you want to overwrite? Enter yes or no"
        continue=1
        while [ $continue == 1 ]; do
            read confirm
            case $confirm in
              yes)
                cp $backup_origin_path $backup_dest_path
                continue=0
                echo "Overwrite successfully"
                ;;
              no)
                continue=0
                echo "OK"
                ;;
              *)
                echo "Wrong input. Please enter again."
            esac
        done
    fi

}

# Restore function
function restore {
    echo "Please enter restore origin folder:"
    read restore_origin

    echo "Please enter restore destination folder:"
    read restore_dest

    echo "Please enter folder / file to restore:"
    read files
    
    restore_origin_path="$restore_origin/$files"
    restore_dest_path="$restore_dest/$files"

    if [ -e $restore_dest_path ] && [ -r $restore_dest_path]; then
        echo "File $files already exist in $restore_dest"
    elif [ -e $rrestore_origin_path ] && [ -r $restore_origin_path]; then
        cp $restore_origin_path $restore_dest_path
        echo "Restore files $files from $restore_origin to $restore_dest successfully"
    else
        echo "File $files doesn't exist or not readable in both $restore_origin and $restore_dest"
    fi
}

# Ask the user whether to backup or restore
echo "Do you want to backup or restore the folder / file: $files?"

# Run the appropriate function based on the user's input

check_action=1
while [ $check_action == 1 ]; do
    read action
    case $action in
      backup)
        backup
        check_action=0
        ;;
      restore)
        restore
        check_action=0
        ;;
      *)
        echo "Invalid action. Please enter again 'backup' or 'restore'."
    esac
done

exit 0
