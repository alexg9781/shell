#!/bin/bash
#if流程

USER=Allen
number=$RANDOM

if grep $USER /etc/passwd ;then
	echo "I can even put in other commands besides echo:"
	ls -a /home/$USER/*
fi

##################################
if [ $number -gt 10000 ]; then
        echo "$number 大于 10000"
else
        echo "$number 小于 10000"
fi

##################################
val1=testing
val2=''
#-n str1 检查 str1 的长度是否非0
#-z str1 检查 str1 的长度是否为0
if [ -n $val1 ];then
	echo "The string '$val1' is not empty"
else
	echo "The string '$val1' is empty"
fi


###################################
#!/bin/bash

if grep $USER /etc/passwd > /dev/null ;then
	echo "The user $USER exists on this system."
elif ls -d /home/$USER > /dev/null ;then
	echo "The user $USER does not exist on this system."
	echo "However, $USER has a directory."
else
	echo "The user $USER does not exist on this system."
	echo "And, $USER does not have a directory."
fi