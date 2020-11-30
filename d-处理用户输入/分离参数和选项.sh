#!/bin/bash

#extracting options and parameters

while [ -n "$1" ]
do
	case "$1" in 
	-a) echo "Found the -a option";;
	-b) echo "Found the -b option";;
	-c) echo "Found the -c option";;
	--) shift #双破折线之后，脚本将剩下的命令行参数当作参数
		break;;
	*) echo "$1 is not an option";;
	esac
	shift
done

count=1
for param in $@
do
	echo "Parameter #$count: $param"
	count=$[ $count + 1 ]
done

## ./bash.sh -a -b test1 -d
# Found the -a option
# Found the -b option, with parameter value test1
# -d is not an option