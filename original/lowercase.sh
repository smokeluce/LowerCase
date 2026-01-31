#!/bin/bash

# "lowercase" Copyright (C) 2003 Paul Swonger (AKA mawst).
# Composed Wednesday September 24, 2003 - http://www.mawst.net/
                                                                                                                             
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
                                                                                                                             
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
                                                                                                                             
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
# USA
                                                                                                                             
# This script requires "tr" (standard on most distributions).
# Consult your distribution's documentation or your favorite search engine for more info.
# No support will be given.
                                                                                                                             
# When you run this script, all files and directories in the directory the script resides in 
# will be converted to lowercase. This does not recursively go through sub directories however.
# Use caution when using this script!
# Once again, use at your own risk!
# Files that are already lowercase will produce errors, these are fine, ignore them.


echo "Starting conversion proccess..."
echo "Files that are already lowercase will produce errors. Ignore these."
for file in *; do mv "$file" "`echo "$file" | tr [A-Z] [a-z]`" ; done
echo "Done!"
