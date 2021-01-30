#!/bin/bash
THIS_SCRIPT_VERSION=1.01.01 

# do_rsync_backup src_file dest_dir
function do_rsync_backup() {
	SRC_SOMETHING="$1" #SRC_SOMETHING 
	DEST_DIR="$2" #DEST_DIR 
	# test SRC_SOMETHING 
	# test DEST_DIR 
	rsync -av "$SRC_SOMETHING" "$DEST_DIR"
}


source ~/lib/script__usage_message.conf
# --- single line USAGE_MESSAGE USG_MSG
export USG_MSG="USAGE: $0 SRC DEST [-h ]\n" 
USG_MSG="${USG_MSG}EXAMPLE: $0 \~/bin \~/icloud/work_backups/ \n" 
export USAGE_MESSAGE="$USG_MSG"
# --- 
##E# rsync -av ~/bin ~/icloud/work_backups/

# SRC
ARG1=$1 #ARG1 
# DEST
ARG2=$2 #ARG2 
if [[ (! -n "$ARG1") ||  (! -n "$ARG2") || ("$ARG1" == "-h") ]] ; then
	[[ ! -n "$ARG1" ]] && echo "ERROR: ARG1(SRC) is not defined" && exit 1
	[[ "$ARG1" == "-h" ]] && script_usage_message && exit 0
	[ -n "$ARG1" ] && echo "SRC='$ARG1'"
	[[ ! -n "$ARG2" ]] && echo "ERROR: ARG2(DEST) is not defined"
	script_usage_message && exit 1
fi

##D#if [["$ARG1" == "-h" ]] ; then
##D#	script_usage_message && exit 0
##D#fi
SRC=$ARG1 #SRC 
DEST=$ARG2 #DEST 

RUN="do_rsync_backup $SRC $DEST " 
echo "executing RUN($RUN)"
# do_rsync_backup src_file dest_dir
$RUN

exit 0


