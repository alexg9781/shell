#!/bin/bash
# using one command line parameter

factorial=1
for (( number = 1; number <= $1; number++))
do
	factorial=$[ $factorial * $number ]
done
echo The factor of $1 is $factorial


# $# 代表参数个数, ${!#}代表最后一个参数
if [ $# -ne 2 ];then
	echo
	echo Usage: test9.sh a b
	echo
	echo The last parameter is ${!#}
else
	total=$[ $1 + $2 ]
	echo
	echo The total is $total
	echo
	echo The last parameter is ${!#}
fi

# $*  全部变量变为了一个字符串
# $@  全部变量独立,但是同时显示
# testing $* and $@
for param in "$*"；do
	echo "\$* Parameter #$count = $param"
	count=$[ $count + 1 ]
done
	echo
count=1
for param in "$@";do
	echo "\$@ Parameter #$count = $param"
	count=$[ $count + 1 ]
done