#!/bin/bash

read -p "Enter the day number (1–100): " day
day_padded=$(printf "%02d" $day)

# Find the week based on the day
week=$(( (day - 1) / 7 + 1 ))
week_padded=$(printf "%02d" $week)

file="100-days-of-code/week-$week_padded/day-$day_padded.md"

if [ -f "$file" ]; then
    git add "$file"
    git commit -m "Update Day $day progress"
    git push origin main
    echo "✅ Day $day pushed successfully!"
else
    echo "❌ File not found: $file"
fi

