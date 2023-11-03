#!/bin/bash

# Function to process index files
process_indexes () {
    find .git/objects/pack/ -name "*.idx" | while read -r idx_file; do
        git show-index < "$idx_file" | awk '{print $2}'
    done
}

# Function to process non-pack objects
process_objects () {
    find .git/objects/ -type f | grep -v '/pack/' | awk -F'/' '{print $(NF-1)$NF}'
}

# Combine object IDs from indexes and non-pack objects
all_objects=$( { process_indexes; process_objects; } )

# Iterate over all objects and pretty print their contents
while IFS= read -r object; do
    git cat-file -p "$object"
done <<< "$all_objects"
