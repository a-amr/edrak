#!/usr/bin/env sh
#two arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source/ destination/ or source destination, note that: the / make difference"
    exit 1
fi
# Check if source exists
if [ ! -d "$1" ]; then
    echo "Source directory '$1' doesn't exist."
    exit 2
fi
#if the dest doesn't exist
mkdir -p "$2"

rsync -av --partial --append  "$1" "$2"
