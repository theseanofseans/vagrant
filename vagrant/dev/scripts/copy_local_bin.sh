#!/bin/bash
THIS_SCRIPT__VERSION=1.04.04 

source ~/lib/script__usage_message.conf 
export USAGE_MESSAGE="\n$0 VERSION=${THIS_SCRIPT__VERSION}\nUSAGE: $0 DEST_DIR "  

# DEST_DIR
ARG1=$1
if [[ ! -n "$ARG1" || "$ARG1" == "-h" ]] ; then
	script_usage_message
	[[ ! -n "$ARG1" ]] && echo "ERROR: ARG1/DEST_DIR is not defined" && exit 1
	exit 0
fi
DEST_DIR=$ARG1

