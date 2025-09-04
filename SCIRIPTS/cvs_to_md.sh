#!/bin/bash

# Check if a file was provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <csv_file>"
  exit 1
fi

csv_file="$1"

# Read the CSV file line by line
{
  IFS=',' read -r -a headers
  # Print Markdown header row
  printf '|'
  for header in "${headers[@]}"; do
    printf ' %s |' "$header"
  done
  echo

  # Print Markdown separator row
  printf '|'
  for _ in "${headers[@]}"; do
    printf ' --- |'
  done
  echo

  # Print the rest of the rows
  while IFS=',' read -r -a row; do
    printf '|'
    for cell in "${row[@]}"; do
      printf ' %s |' "$cell"
    done
    echo
  done
} < "$csv_file"