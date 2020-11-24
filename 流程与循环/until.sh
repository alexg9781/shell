#!/bin/bash
# using the until command
# 测试代码退出状态码不为0,bash shell才会执行循环中列出的命令
var1=100
until
    echo $var1
    [ $var1 -eq 0 ];do
    	echo Inside the loop: $var1
	    var1=$[ $var1 - 25 ]
	done