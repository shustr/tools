#  Purpose of the script:
#  1. Renames all files in destination directory to lower case names
#  2. If file name exists (for example, Filename.txt and filename.txt presented), script performs content comparison. 
#  3. If the files are same, overwhites. If different, renames Filename.txt into filename_01.txt or next number if this one exists. 
#     Example: if filename_01 and filename_02 exist, it would rename source file into filename_03
#
#
#
# Current functionality: 1 (only renames files and asking to overwite if file already exists)


#!/bin/bash
# 
for i in $( ls | grep [A-Z] ) 
  do mv -i $i `echo $i | tr 'A-Z' 'a-z'` 
done
