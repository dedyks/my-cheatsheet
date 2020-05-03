#!/bin/bash 
#get the date
date=$(date)
topic="$1"

filename="${HOME}/Documents/Repo/linux-pluralsight/${topic}notes.txt"

read -p "Your note: " note

if [[ $note ]]; then
    echo "$date: $note" >> "$filename"
    echo "Note '$note' saved in $filename"
else
    echo "No input"
    fi
exit 0