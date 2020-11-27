#!/bin/bash

# using the return command in a function
# 退出状态码必须是0~255

function db1 {
	read -p "Enter a value:" value
	echo "doubling the value"
	return $[ $value * 2 ]
}

db1
echo "The new value is $?"

####################################
function db2 {
read -p "Enter a value: " value
echo $[ $value * 2 ]
}
result=$(dbl)
echo "The new value is $result"