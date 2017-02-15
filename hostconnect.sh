#!/bin/bash
#
# Script helps you to connect to the server from your list. Helps if you are lazy to write "ssh -p port -i KEYFILE user@server" all the time
# In this simple version, your SSH connection details written right in the script.

PS3='Choose server to connect to or 1) to exit from menu... '
select option in quit "Server 1" "Server 2"
do
	case $option in
		quit)
		exit
		;;

		"Server 1")
			echo "connecting to Server 1... "
			ssh # insert your ssh connection details here #
			exit
		;;

		"Server 2")
			echo "connecting to Server 2... "
			ssh # insert your ssh connection details here #
			exit		
		;;
	*)
		echo "Error"
		;;
	esac
done
