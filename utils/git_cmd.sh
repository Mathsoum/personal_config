#!/bin/bash

DEV_DIR="${HOME}/dev/"
REPO_LIST="${HOME}/utils/.REPO_LIST.txt"

if [ $# -lt 1 ]
then 
	echo "No command given"
	exit 1
fi

while read line
do
	dir="${DEV_DIR}$line"
	echo "  ###  DIRECTORY \"$line/\""
	cd $dir
	git $@
done < $REPO_LIST

