# 遇到break,跳出当前执行的循环(小循环)
# breaking out of a for loop
for var1 in `seq 10`;do
	if [ $var1 -eq 5 ];then
		break
	fi
	echo "Iteration number: $var1"
done
echo "The for loop is completed"


#!/bin/bash
# breaking out of an inner loop
for (( a = 1; a < 4; a++ ));do
	echo "Outer loop: $a"
	for (( b = 1; b < 100; b++ ));do
		if [ $b -eq 5 ];then
			break
		fi
	echo " Inner loop: $b"
	done
done

#!/bin/bash
# breaking out of an outer loop
# 其中 n 指定了要跳出的循环层级
# 默认情况下,n为1,表明跳出的是当前的循环。如果n设为2,break命令就会停止下一级的外部循环
for (( a = 1; a < 4; a++ ));do
	echo "Outer loop: $a"
	for (( b = 1; b < 100; b++ ));do
		if [ $b -gt 4 ];then
			break 2  #跳出外部循环
		fi
	echo " Inner loop: $b"
	done
done