#!/bin/bash

# creating a temp file in /tmp
# -t 选项会强制 mktemp 命令来在系统的临时目录来创建该文件,返回用来创建临时文件的全路径
tempfile=`mktemp -t tmp.XXXXXX`

echo "This is a test file" > $tempfile
echo "This is the second line of the test" >> $tempfile

echo ”The temp is locate at : $tempfile“
cat $tempfile
rm -f $tempfile


#!/bin/bash
# creating and using a temp file
tempfile=$(mktemp test19.XXXXXX)
exec 3>$tempfile
echo "This script writes to temp file $tempfile"
echo "This is the first line" >&3
echo "This is the second line." >&3
echo "This is the last line." >&3
exec 3>&-
echo "Done creating temp file. The contents are:"
cat $tempfile
rm -f $tempfile 2> /dev/null
# $ ./test19
# This script writes to temp file test19.vCHoya
# Done creating temp file. The contents are:
# This is the first line
# This is the second line.
# This is the last line.