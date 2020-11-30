#!/bin/bash
# using the continue command
# continue 命令可以提前中止某次循环中的命令，但并不会完全终止整个循环,只跳过剩余的命令
for (( var1 = 1; var1 < 15; var1++ ));do
	if [ $var1 -gt 5 ] && [ $var1 -lt 10 ];then
	continue
	fi
	echo "Iteration number: $var1"
done



# continuing an outer loop
for (( a = 1; a <= 5; a++ ));do
	echo "Iteration $a:"
	for (( b = 1; b < 3; b++ ));do
		if [ $a -gt 2 ] && [ $a -lt 4 ];then
		continue 2   #停止处理循环内的命令
		fi
var3=$[ $a * $b ]
	echo " The result of $a * $b is $var3"
	done
done