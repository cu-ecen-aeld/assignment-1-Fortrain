#!/bin/bash
writefile=$1
writestr=$2

if [ $? != 0 ]; then
	echo "Number of arguments entered is not correct."
	exit 1
fi

mkdir -p "$(dirname $writefile)" && echo "$writestr" > $writefile
