#!/bin/bash

# Prompt the user for confirmation before shutting down
read -p "Are you sure you want to turn off your computer? (y/n): " choice

if [[ "$choice" =~ ^[Yy]$ ]]; then
  # Execute the shutdown command using AppleScript
  osascript -e 'tell app "System Events" to shut down'
else
  echo "Shutdown canceled."
fi
