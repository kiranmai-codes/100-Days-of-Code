#!/bin/bash

mkdir -p 100-days-of-code

day=1
for week in {1..14}; do
    week_folder=$(printf "100-days-of-code/week-%02d" $week)
    mkdir -p "$week_folder"
    for i in {1..7}; do
        if [ $day -le 100 ]; then
            day_file=$(printf "$week_folder/day-%02d.md" $day)
            echo "# Day $day" > "$day_file"
            echo "- ✅ What I did today:" >> "$day_file"
            echo "- 📚 What I learned:" >> "$day_file"
            echo "- 🔜 Plan for tomorrow:" >> "$day_file"
            ((day++))
        fi
    done
done

