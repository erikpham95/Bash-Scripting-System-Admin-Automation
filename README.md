# Bash-Scripting-System-Admin-Automation

This is a beginner's guideline for Linux usage & Bash Scripting

## I.  Technology Prerequisites

### 1.  Linux OS

#### a.  Learning Resources

-   References

    -   [Tutorialspoint - LINUX / UNIX](https://www.tutorialspoint.com/unix/index.htm)

    -   [Ryan\'s Tutorials - Linux Tutorial](https://ryanstutorials.net/linuxtutorial/)

-   Cheat Sheet

    -   [Ryan Tutorials - Linux Command Line Cheat Sheet](https://ryanstutorials.net/linuxtutorial/cheatsheet.php)

    -   [MakeUseOf - Linux Command Line Cheat Sheet](https://mr-khan.gitlab.io/assets/linux/linux-basic-command.jpg)

    -   [Guru99 - Linux Command Cheat Sheet](https://www.guru99.com/linux-commands-cheat-sheet.html)

-   Instructions / Tutorials (Youtube)

    -   [(freeCodeCamp.org) Linux Operating System - Crash Course for Beginners](https://www.youtube.com/watch?v=ROjZy1WbCIA&ab_channel=freeCodeCamp.org)

    -   [(Programming Knowledge) Linux Command Line Tutorial For Beginners](https://www.youtube.com/playlist?list=PLS1QulWo1RIb9WVQGJ_vh-RQusbZgO_As)

    -   [(thenewboston) Linux Tutorial for Beginners](https://www.youtube.com/playlist?list=PL6gx4Cwl9DGCkg2uj3PxUWhMDuTw3VKjM)

-   Online Courses (Coursera)

    -   [(Duke) Python, Bash and SQL Essentials for Data Engineering](https://www.coursera.org/specializations/python-bash-sql-data-engineering-duke)

    -   [(Codio) Unix and Bash for Beginners](https://www.coursera.org/specializations/unix-and-bash-for-beginners)

#### b.  Administration Matters

-   Windows Subsystem on Linux (WSL)

    -   [r/bashonubuntuonwindows -- Wiki](https://www.reddit.com/r/bashonubuntuonwindows/wiki/index/)

    -   [(David Bombal) - WSL 2 Instruction](https://www.youtube.com/playlist?list=PLhfrWIlLOoKNMHhB39bh3XBpoLxV3f0V9)

-   Virtual Machine

    -   Hypervisor Technology

    -   Virtual Machine (new technology) vs Dual Booting (old technology)

    -   Common VM Options: Microsoft Hyper-V (recommended for Windows user) vs Oracle VirtualBox

####c.  Basic Concepts

-   Linux OS Fundamentals

    -   [Linux OS Structure](https://www.tutorialspoint.com/operating_system/os_linux.htm)
 
    ![Use this template](https://github.com/erikpham95/Bash-Scripting-System-Admin-Automation/blob/main/Photos/1.png)

    -   Command Line Shell vs Graphical Shell

![Use this template](https://github.com/erikpham95/Bash-Scripting-System-Admin-Automation/blob/main/Photos/2.png)

    -   [Linux vs Windows File System / Naming](https://www.javatpoint.com/linux-vs-windows)

![Use this template](https://github.com/erikpham95/Bash-Scripting-System-Admin-Automation/blob/main/Photos/3.png)
-   [Linux File Hierachy System](https://www.javatpoint.com/linux-file-hierarchy-system)

![Use this template](https://github.com/erikpham95/Bash-Scripting-System-Admin-Automation/blob/main/Photos/4.png)

    -   Basic: / (Root), /home, /root

    -   Intermediate: /srv, /mnt, /tmp, /etc, /boot, etc.

-   Linux Directory / File Management

    -   [Absolute vs Relative Pathnames](https://linuxhandbook.com/absolute-vs-relative-path/)

![Use this template](https://github.com/erikpham95/Bash-Scripting-System-Admin-Automation/blob/main/Photos/5.png)

    -   [Regular vs Directory Files](https://www.dispersednet.com/unix-system-admin/module4/regular-files.php)

    -   Key commands: pwd / cd / ls / mkdir / rmdir / mv / rm / tough -- car -- echo

#### d.  Intermediate / Advanced Concepts

-   Linux File Permission

    -   [chmod](https://www.javatpoint.com/linux-chmod-command) vs [chown](https://www.javatpoint.com/linux-chown-command)

    -   [Permission Notation](https://www.javatpoint.com/linux-file-permissions)

![Use this template](https://github.com/erikpham95/Bash-Scripting-System-Admin-Automation/blob/main/Photos/6.png)

![Use this template](https://github.com/erikpham95/Bash-Scripting-System-Admin-Automation/blob/main/Photos/7.png)

-   [Linux Process Management](https://www.guru99.com/managing-processes-in-linux.html)

    -   Foreground vs Background Process

    -   Key commands: kill / ps / top / bg / fg / nice -- renice

-   [Linux Filters](https://ryanstutorials.net/linuxtutorial/filters.php)

    -   Basics: head / tail, sort, more, cat, cut

    -   Advanced: grep, sed, tee, awk

-   [Linux Redirection & Piping](https://www.geeksforgeeks.org/piping-in-unix-or-linux/)

    -   File Redirection

    -   Program Redirection (Piping)

### 2.  Linux Bash / Shell Scripting

#### a.  Learning Resources

-   References

    -   [Ryan\'s Tutorials - Bash Scripting Tutorial](https://ryanstutorials.net/bash-scripting-tutorial/)

    -   [Tutorialspoint - LINUX / UNIX Shell Programming](https://www.tutorialspoint.com/unix/shell_scripting.htm)

    -   [Javatpoint - Bash Scripting Tutorial](https://www.javatpoint.com/bash)

    -   [Shell-tips.com](https://www.shell-tips.com/#gsc.tab=0)

-   Cheat Sheet

    -   [devhints.io - Bash scripting cheatsheet](https://devhints.io/bash)

    -   [pcwdld.com - BASH Cheat Sheet](https://www.pcwdld.com/bash-cheat-sheet#wbounce-modal)

-   Instructions / Tutorials (Youtube)

    -   [(Programming Knowledge) Unix Shell Scripting Tutorial for Beginners](https://www.youtube.com/playlist?list=PLS1QulWo1RIYmaxcEqw5JhK3b-6rgdWO_)

    -   [(linuxhint) Bash Scripting Full Course](https://www.youtube.com/watch?v=e7BufAVwDiM&ab_channel=linuxhint)

    -   [(Intellipaat) Shell Scripting Tutorial \| Linux](https://www.youtube.com/watch?v=9ckXibjManw&ab_channel=Intellipaat)

-   Online Courses (Coursera)

    -   [(IBM) Hands-on Introduction to Linux Commands and Shell Scripting](https://www.coursera.org/learn/hands-on-introduction-to-linux-commands-and-shell-scripting?specialization=data-warehouse-engineering)

    -   [(Google) Using Python to Interact with the Operating System](https://www.coursera.org/learn/python-operating-system?specialization=google-it-automation)

-   Practices

    -   [HackerRank - Linux Shell](https://www.hackerrank.com/domains/shell)

    -   [Exercism - Bash](https://exercism.org/tracks/bash/exercises)

#### b.  Key Topics

-   Syntax & Administration Matters

    -   Script Execution

    -   Shebang

    -   System-set variables

-   [Input Methods](https://ryanstutorials.net/bash-scripting-tutorial/bash-input.php)

    -   Command Line Arguments

    -   Read input during script execution

    -   Read from STDIN

-   Arithmetic

    -   let vs expr

    -   [bc](https://www.geeksforgeeks.org/bc-command-linux-examples/)

    -   Operator Table

![Use this template](https://github.com/erikpham95/Bash-Scripting-System-Admin-Automation/blob/main/Photos/8.png)

-   Bash Conditional Statements & Loops

    -   [Bash Conditional Statements](https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php)

    -   [Basic Loops](https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php)

-   [Bash Functions](https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php)

    -   Function formats (2 available)

    -   Global vs Local scope

-   Bash Array

    -   (Numerically) Indexed vs Associative Array

    -   Explicit vs General ("on the fly") Array Declaration

    -   Array Iteration: \* (asterisk) vs @ (at)

    -   Array Manipulations: \# (get array size), ! (get array index / key-value pair), 
    unset (remove array elements)

    -   Array Splicing

-   Bash String

    -   Value Assignment & Print / Output

    -   String Concatenating

    -   Substring Operation

## II. Sample Automation Bash Script

#### 1.  Beginner Tasks

#### a.  System Monitoring

-   The following system items are checked:

    -   Memory Usage

    -   CPU Usage

    -   Disk Space Usage on the root file system (\"/\")

    -   Network connectivity by pinging the Google DNS server at 8.8.8.8

    -   The status of the \"httpd\" process (Apache web server)

-   Notes

    -   Make sure the script has executable permissions by running the command:
    **chmod +x system\_monitoring.sh**.

    -   \"httpd\" process is chosen as a sample service / process.

    -   Threshold for memory / CPU / disk usage can be temporarily set to 0 as a test case.

#### b.  Backup & Restore

-   Storage Management

    -   The script takes a command-line argument **\$command**, which can either be \"backup\" or \"restore\".

    -   "backup" or "restore" function will then be executed accordingly

    -   The file / folder to be backed up or restored, as well as the origin / destination folder, are specified by user.

-   "Backup" Breakdown

    -   User will specify backup origin folder (A), backup destination folder (B), and the file / folder (F) to backup

    -   S1: Script will check (A) if it contains (F) & if (F) can be read.

    -   S2: Script will check (B) if it contains (F) & if (F) can be read.

    -   S3: If (B) already contains (F), script will as if user want to overwrite it

-   "Restore" Breakdown

    -   User will specify restore origin folder (B), restore destination folder (A), and the file / folder (F) to backup

    -   S1: Script will check (A) if it already contains (F) & if (F) can be read. If yes, then no restore required.

    -   S2: Script will check (B) if contains (F) & if (F) can be read.

    -   S3: If (B) contains (F), script will perform the restore.

### 2.  Intermediate Tasks

#### a.  User Management

-   General

    -   \(A\) 3 functions for handling user password: Create, Delete & Change

    -   \(B\) 4 functions for user management: Create new users, Delete existing users, Change the password of existing users & Exit the script

-   Script Breakdown / Notes

    -   S1: Check if the script is being run as root.

    -   S2: Define 3 functions for handling user password as in (A)

    -   S3: Display a menu to the user to select one of the four options as in (B)

    -   S4: Prompt the user to enter an option number.

    -   S5: Based on the user\'s input, the script will execute the relevant function.

    -   S6: If the user enters an invalid option, the script will output an error message.

#### b.  System Update

-   General

    -   Aim: Automates the process of checking for and installing system update

    -   User will be able to "customize" the update every time he run the script

-   Script Breakdown / Notes

    -   S1: Checks if the script is being run as root (using the \$EUID variable).

    -   S2: Prompts the user to confirm that they want to update the system.

    -   S3: Checks if there are any updates available using apt list \--upgradable.

    -   S4: Exits if there are no updates available.

    -   S5: Creates a backup of important files by copying the /etc/apt directory to /root/backup/.

    -   S6: Updates the system using apt upgrade -y.

    -   S7: Checks if there were any errors during the update process using apt-get \--just-print upgrade \| grep.

    -   S8: Displays a message asking the user to check the output above if there were any errors.

    -   S9: Checks if any updates required a reboot using needs-restarting -r.

    -   S10: Prompts the user to reboot now or later if a reboot is required.
