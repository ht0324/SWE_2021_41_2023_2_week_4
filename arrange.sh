#!/bin/bash

files_dir="./files"

for file in "$files_dir"/*; do
  file_name=$(basename "$file")
  first_letter=$(echo "$file_name" | cut -c 1)
  
  first_letter_lower=$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')
  
  dest_dir="./$first_letter_lower"
  mkdir -p "$dest_dir"
  
  mv "$file" "$dest_dir/"
done
