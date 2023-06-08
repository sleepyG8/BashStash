#!/bin/bash

# Read the website URL from the command line
read -p "Enter the website URL: " WEBSITE_URL

# Open the website using the default web browser
xdg-open "$WEBSITE_URL"  # Replace with the appropriate command for your system if needed
