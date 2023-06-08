#!/bin/bash

# Set the interval between pop-up windows in seconds
INTERVAL=10

# Ignore the SIGINT signal (Ctrl+C)
trap '' SIGINT

# Get the parent process ID
PARENT_PID=$$

# Loop to repeatedly execute the script
while true
do
    # Display a pop-up notification with the text "!!!!!!!!!!"
    osascript -e 'display notification "!!!!!!!!!!" with title "Notification"'

    # Sleep for the specified interval before reopening the script
    sleep $INTERVAL

    # Reopen the script itself
    "$0" &
    disown

    # Check if the parent process is still running
    if ! ps -p $PARENT_PID > /dev/null; then
        exit
    fi
done
