#!/bin/bash
# Not finished version of the script. The script supposed to take data fromm separate text file 
# that has each server details on a separate line.
# 

#
hostlistfile="hostlist.txt"
srvqty=$(wc -l $hostlistfile | cut -f1 -d" ")
echo "File with list of your servers: $hostlistfile"
echo -en '\n'
echo "Servers in file: $srvqty"
echo -en '\n'
PS3='Choose server to connect to or last option to quit... '
FOUNDHOSTS=$(cut -f1 -d" " $hostlistfile) 


select option in $FOUNDHOSTS "Quit" 

do

	#
# ALl magic about to happen in here, but it's not quite done yet...
#

done
