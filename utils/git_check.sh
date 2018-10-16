#!/bin/bash

DEV_DIR="${HOME}/dev/"
REPO_LIST="${HOME}/utils/.REPO_LIST.txt"

while read line
do
	dir="${DEV_DIR}$line"
	echo "  ###  DIRECTORY \"$line/\""
	cd $dir
	git fetch && git status
done < $REPO_LIST

