#!/bin/bash

# Directory containing .txt files
DIR="./txt_files"

# Check if the directory exists
if [ ! -d "$DIR" ]; then
    echo "Directory $DIR does not exist."
    exit 1
fi

# Count the number of .txt files in the directory
TXT_COUNT=$(find "$DIR" -maxdepth 1 -type f -name "*.txt" | wc -l)

# Output total number of .txt files
echo "Total number of .txt files: $TXT_COUNT"

# Check if any .txt files exist
if [ "$TXT_COUNT" -eq 0 ]; then
    echo "No .txt files found in the directory."
    exit 1
fi

# Check if 'processed' directory exists inside txt_files, if not, create it
if [ ! -d "$DIR/processed" ]; then
    mkdir "$DIR/processed"
    echo "'processed' directory created inside $DIR."
else
    echo "'processed' directory already exists inside $DIR."
fi

# Process each .txt file
for FILE in "$DIR"/*.txt; do
    # Get the line count of the file
    LINE_COUNT=$(wc -l < "$FILE")

    # Extract the filename without the extension
    FILENAME=$(basename "$FILE" .txt)

    # Define the new file name with the line count included
    NEW_FILENAME="${FILENAME}_${LINE_COUNT}.txt"

    # Move and rename the file to the 'processed' directory
    mv "$FILE" "$DIR/processed/$NEW_FILENAME"

    # Log the processed information
    echo "Processed $FILE -> $DIR/processed/$NEW_FILENAME ($LINE_COUNT lines)"
done
