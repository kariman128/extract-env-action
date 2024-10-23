#!/bin/sh -l

echo "$1" | while read -r line; do
  if [[ ! -z "$line" && "$line" != \#* ]]; then
    export $line                       
    key=$(echo $line | cut -d '=' -f 1)
    echo "Setting environment variable: $key"
  fi
done
