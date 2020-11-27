#!/bin/bash
# passing parameters to a function
# 脚本中的 addem 函数首先会检查脚本传给它的参数数目。如果没有任何参数，或者参数
多于两个， addem 会返回值 -1 。如果只有一个参数， addem 会将参数与自身相加。如果有两个参
数， addem 会将它们进行相加
function addem {
if [ $# -eq 0 ] || [ $# -gt 2 ];then
	echo -1
elif [ $# -eq 1 ];then
	echo $[ $1 + $1 ]
else
	echo $[ $1 + $2 ]
fi
}

echo -n "Adding 10 and 15: "
value=$(addem 10 15)
echo $value
echo -n "Let's try adding just one number: "
value=$(addem 10)
echo $value
echo -n "Now trying adding no numbers: "
value=$(addem)
echo $value
echo -n "Finally, try adding three numbers: "
value=$(addem 10 15 20)
echo $value


#################
#!/bin/bash
# trying to access script parameters inside a function
function func7 {
echo $[ $1 * $2 ]
}
if [ $# -eq 2 ]
then
value=$(func7 $1 $2)
echo "The result is $value"
else
echo "Usage: badtest1 a b"
fi