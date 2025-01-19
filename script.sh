#!/bin/bash

# Check if at least one program name is provided
if [ $# -eq 0 ]; then
  echo "No program names provided. Usage: ./script.sh program1 program2 ..."
  exit 1
fi

# Iterate over each provided program name
for program in "$@"; do
  # Define the output file name
  output_file="${program}.out"
  
  # Clear the output file if it exists
  echo "" > "$output_file"
  
  # Check if the Python file exists
  if [ ! -f "${program}.py" ]; then
    echo "File ${program}.py does not exist" >> "$output_file"
    continue
  fi
  
  # Run the program with different problem sizes
  for size in 8 16 32; do
    # Run the Python program with the problem size and save the output
    echo "Running ${program}.py with problem size $size" >> "$output_file"
    python3 "${program}.py" "$size" >> "$output_file"
    echo "Finished running ${program}.py with problem size $size" >> "$output_file"
  done
done
