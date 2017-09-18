#!/usr/bin/env bash

# Create a array of files and directories in the /var/log/ directory
readarray -t log_files <<< "$(ls -1 /var/log/ | grep -v '^\.')"

echo "Array length [${#log_files[@]}]"
#echo "Array entry 0 [${log_files[0]}]"

let i=0
while (( ${#log_files[@]} > i ))
do
  #echo "${log_files[i]}"
  echo "${log_files[i]}"
  ((i++))
done
