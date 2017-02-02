# Purpose of the script:
# 1. Renames all files in destination directory to lower case names
# 2. If file name exists (for example, Filename.txt and filename.txt presented), script performs content comparison. If the files are same, overwhites. If different, renames Filename.txt into filename_01.txt
#
# Current functionality: 1. only


#!/bin/bash
# 
for i in $( ls | grep [A-Z] ) 
  do mv -i $i `echo $i | tr 'A-Z' 'a-z'` 
done
