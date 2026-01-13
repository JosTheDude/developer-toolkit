#!/bin/bash

# Script: exports.sh
# Description: Exports each directory using packwiz and saves the exports to ./exports/
# Usage: Run this script inside the Packwiz folder to export all versions in the folder

EXPORTS_DIR="$(pwd)/exports"
VERSION="1.4.0"

# In case directory does not exist
mkdir -p "$EXPORTS_DIR" || {
  echo "Failed to create $EXPORTS_DIR"
  exit 1
}

# Directory Iteration
for dir in */; do
  if [ -d "$dir" ] && [ "${dir%/}" != "exports" ]; then
    # Remove the trailing slash from the directory name for clean export names
    dir_name="${dir%/}"
    version="${VERSION}"

    echo "Processing directory: $dir_name"

    mkdir -p "$EXPORTS_DIR/$dir_name" || {
      echo "Failed to create $EXPORTS_DIR/$dir_name"
      exit 1
    }

    cd "$dir_name" || {
      echo "Failed to enter directory $dir_name"
      continue
    }

    # CurseForge Export
    # Disabled as No Curseforge Version Present
    packwiz curseforge export -o "$EXPORTS_DIR/${dir_name}/Dev-Toolkit-${dir_name}-${version}.zip"

    # Modrinth Export
    packwiz modrinth export -o "$EXPORTS_DIR/${dir_name}/Dev-Toolkit-${dir_name}-${version}.mrpack"

    cd ..

    echo "Exported $dir_name successfully."
  else
    echo "Skipping $dir as it is not a directory or is the exports directory."
  fi
done

echo "All exports completed successfully."

# End of Script
