# LowerCase

A small utility script originally written in 2003 to convert filenames in a directory to lowercase.  
This repository preserves the historical version of the script and provides a modernized, safer update suitable for current systems.

---

## Overview

The **LowerCase** script renames all files in the current directory to lowercase.  
The original version was written in 2003 by Paul Swonger (mawst) and released under the GNU General Public License.

This repository contains:

- The untouched 2003 release (`original/`)
- A modernized version with safer handling and improved behavior (`lowercase.sh`)

---

## Repository Structure
LowerCase/
│   lowercase.sh          # Modernized version (2026)
│
└── original/
        LowerCase.tgz     # Original 2003 archive
        lowercase.sh      # Original script extracted from the archive
        gpl.txt           # Original GPL license text
        ---

## The Original Script (2003)

The original script was a simple Bash utility that:

- Renamed all files in the current directory to lowercase
- Relied on `tr` for character conversion
- Produced harmless errors when filenames were already lowercase
- Did not check for filename collisions
- Did not handle special characters or edge cases

It is preserved exactly as‑found in the `original/` directory for historical and archival purposes.

---

## Modernized Version (2026)

The updated script improves safety and usability while preserving the spirit of the original.

Enhancements include:

- Modern POSIX‑compliant `tr` usage
- Safer quoting and filename handling
- Collision detection to prevent overwriting existing files
- Cleaner, more informative output
- Avoids unnecessary errors
- Uses `$(...)` instead of legacy backticks
- Uses `printf` instead of `echo` for reliability

The modern script lives at the project root as `lowercase.sh`.

---

## Usage

### Running the modern script
```bash
bash lowercase.sh
```

The script will:

- Scan the current directory
- Convert filenames to lowercase
- Skip files that would collide with existing names
- Print each rename operation

### Notes

- The script does **not** recurse into subdirectories.
- Hidden files (`.*`) are not processed.
- Use caution when running in directories with case‑sensitive naming conflicts.

---

## License

The original script was released under the **GNU General Public License (GPL)**.
The original license text is included in `original/gpl.txt`.

The modernized version continues under the same license for continuity.

---

## Project History

- **2003** — Original script written and released by Paul Swonger (mawst)
- **2026** — Script recovered from archival sources and restored
- **2026** — Modernized version created with improved safety and portability

This repository serves both as a functional utility and a preserved piece of early scripting history.

---

## Author

Paul Swonger  
Original author and maintainer of both the 2003 and 2026 versions.