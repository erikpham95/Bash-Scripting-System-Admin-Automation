#!/bin/bash

# Define variables for resource thresholds
CPU_THRESHOLD=10
MEM_THRESHOLD=10
DISK_THRESHOLD=10

# Define function to check network connectivity
function check_network() {
    local host="$1"
    if ping -c1 -w1 "$host" >/dev/null 2>&1; then
        echo "Network connection: OK"
    else
        echo "Network connection: FAILED"
    fi
}

# Define function to check process status
function check_process() {
    local process_name="$1"
    if pgrep -x "$process_name" >/dev/null; then
        echo "Process $process_name: OK"
    else
        echo "Process $process_name: FAILED"
    fi
}

function check_cpu {
    # set -x
    local cpu_usage=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}' | cut -d. -f1)
    # Check if the CPU usage is greater than the threshold
    if [ "$cpu_usage" -gt "$CPU_THRESHOLD" ]; then
    # Send a warning message if the CPU usage is greater than the threshold
        echo "Warning: CPU usage is at $cpu_usage%. Please close unnecessary processes to reduce CPU load."
    fi
}

# Define function to check memory usage
function check_mem {
    local memory_usage=$(free | awk '/Mem/{printf("%d", $3/$2*100)}')
    
    # Check if the memory usage is greater than the threshold
    if [ "$memory_usage" -gt "$MEM_THRESHOLD" ]; then
    # Send a warning message if the memory usage is greater than the threshold
    echo "Warning: Memory usage is at $memory_usage%. Please close unnecessary processes to free up memory."
    fi
}

function check_disk {

    # Use the df command to get the disk usage and extract the percentage used
    local disk_usage=$(df -h / | awk 'NR==2{print $5}' | tr -d '%')

    # Check if the disk usage is greater than the threshold
    if [ "$disk_usage" -gt "$DISK_THRESHOLD" ]; then
        # Send a warning message if the disk usage is greater than the threshold
        echo "Warning: Disk usage is at $disk_usage%. Please close unnecessary processes to free up disk."
    fi

}

# Main function
function main() {
    
    # Check network connectivity
    check_network "8.8.8.8"
    
    # Check process status
    # Note: httpd is choosen as a sample service / process
    check_process "httpd"
    
    # Check disk usage
    check_disk "/"

    # Check CPU usage
    check_cpu

    # Check memory usage
    check_mem

# Call the main function
main
