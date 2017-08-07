#!/usr/bin/env bash

readarray -t drives <<< "$(fdisk -l 2> /dev/null | grep '/dev/sd' | grep -v sda | cut -d' ' -f2-3)"

echo "Array length [${#drives[@]}]"

let i=0
while (( ${#drives[@]} > i ))
do
  echo "${drives[i]}"
  ((i++))
done
