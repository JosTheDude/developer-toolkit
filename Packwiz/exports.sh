#!/bin/bash

# Script: exports.sh
# Description: Exports each directory using packwiz and saves the exports to ./exports/
# Usage: Run this script inside the Packwiz folder to export all versions in the folder

EXPORTS_DIR="./exports"

# In case directory does not exist
mkdir -p "$EXPORTS_DIR"

# Directory Iteration
for dir in */ ; do
    if [ -d "$dir" ] && [ "${dir%/}" != "exports" ]; then
        # Remove the trailing slash from the directory name for clean export names
        dir_name="${dir%/}"
        
        echo "Processing directory: $dir_name"

        cd "$dir_name" || { echo "Failed to enter directory $dir_name"; continue; }

        # CurseForge Export
        packwiz curseforge export -o "$EXPORTS_DIR/Dev-Toolkit-${dir_name}-1.0.0.zip"
        
        # Modrinth Export
        packwiz modrinth export -o "$EXPORTS_DIR/Dev-Toolkit-${dir_name}-1.0.0.zip"

        cd ..

        echo "Exported $dir_name successfully."
    else
        echo "Skipping $dir as it is not a directory or is the exports directory."
    fi
done

echo "All exports completed successfully."

# End of Script
