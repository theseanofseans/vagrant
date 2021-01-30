#!/bin/bash
#VERSION=0.01

RUN='git log "$@" | more ' 
echo "running: $RUN"
eval $RUN


