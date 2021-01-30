#!/bin/bash
#VERSION=0.01

source ~/lib/script__usage_message.conf 
# --- single line USAGE_MESSAGE 
export USAGE_MESSAGE="USAGE: $0 REQUIRED_ARGS [OPTIONAL_ARGS]" 

# example : for ta in ` ls TA-SL-20180802-0* | cut -f1 -d ' ' ` ; do ls -l $ta*; ./git_status.sh $ta*; echo; done

