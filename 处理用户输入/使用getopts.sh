#!/bin/bash
# simple demonstration of the getopts command
# getopts optstring variable
# 如果选项字母要求有个参数值，就加一个冒号。
# 要去掉错误消息的话，可以在 optstring 之前加一个冒号
# getopts 命令将当前参数保存在命令行中定义的 variable 中
while getopts :ab:c opt
do
	case "$opt" in
	a) echo "Found the -a option";;
	b) echo "Found the -b option, with value $OPTARG";;
	c) echo "Found the -c option";;
	*) echo "Unknown option:$opt";;
	esac
done
