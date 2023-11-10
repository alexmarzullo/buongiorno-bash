#!/bin/bash

today=$(date +%s)
new_year=$(date -d "01/01/$(date +%Y -d '+1 year')" +%s)

for ((day=$today; day<=$new_year; day+=86400)); do
    formatted_date=$(date -d @$day "+%d/%m/%Y")
    echo "Buongiorno il $formatted_date"
done