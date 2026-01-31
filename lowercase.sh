#!/bin/bash

echo "Converting filenames to lowercase..."

shopt -s nullglob

for file in *; do
    lower=$(printf '%s' "$file" | tr 'A-Z' 'a-z')
    if [[ "$file" != "$lower" ]]; then
        if [[ -e "$lower" ]]; then
            echo "Skipping '$file' → '$lower' (target exists)"
        else
            mv -- "$file" "$lower"
            echo "Renamed: $file → $lower"
        fi
    fi
done

echo "Done."