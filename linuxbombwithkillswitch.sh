#!/bin/bash

# Set the interval between pop-up windows in seconds
INTERVAL=3

# Infinite loop to display the pop-up repeatedly
while true
do
    # Display a pop-up window with the text "!!!!!!!!!!"
    zenity --info --text="!!!!!!!!!!"

    # Sleep for the specified interval before displaying the next pop-up
    sleep $INTERVAL
done
