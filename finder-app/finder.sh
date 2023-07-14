#!/bin/bash
filesdr=$1
searchstr=$2

if [ $? != 0 ]; then
	echo "Number of arguments is incorrect."
	exit 1
fi

if [ ! -d "$filesdr" ]
then
	echo "Given directory does not exist."
	exit 1
fi

var1=$(find $filesdr -type f | wc -l)
cd $filesdr
var2=$(grep -r $searchstr | wc -l)

echo "The number of files are  $var1 and the number of matching lines are $var2"
