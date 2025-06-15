#!/bin/bash

# Exit immediately on error
set -e

# Check if exactly two arguments are passed
if [ "$#" -ne 2 ]; then
  echo "Error: Two arguments required. Usage: $0 <writefile> <writestr>"
  exit 1
fi

writefile="$1"
writestr="$2"

# Extract directory path and create it
dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

# Write string to file
echo "$writestr" > "$writefile"
