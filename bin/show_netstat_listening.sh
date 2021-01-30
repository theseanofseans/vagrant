### SKELETON.sh  VERSION=0.02

#!/bin/bash
THIS_SCRIPT_VERSION=0.01

source ~/lib/script__usage_message.conf
export USAGE_MESSAGE="USAGE: $0 [ -h ]" 


ARG1=$1
if [[ "$ARG1" == "-h" ]] ; then
	script_usage_message; exit 0
fi

netstat -noaq | head -n 4 ; date ; netstat -noaq | grep LISTEN


