#!/bin/bash

# function to process index files
process_indexes () {
    find .git/objects/pack/ -name "*.idx" | while read idx_file; do
        git show-index < "$idx_file" | awk '{print $2}'
    done
}

# function to process non-pack objects
process_objects () {
    find .git/objects/ -type f | grep -v '/pack/' | awk -F'/' '{print $(NF-1)$NF}'
}

# Combine object IDs from indexes and non-pack objects
all_objects=$( { process_indexes; process_objects; } )

# Iterate over all objects and pretty print their contents
for object in $all_objects; do
    git cat-file -p $object
done

~                                                                                   
~                                                                                   
~                                                                                   
~                                                                                   
~                                                                                   
