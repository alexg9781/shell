#!/bin/bash
#  在处理数据前运行脚本
BEGIN {
print "The latest list of users and shells"
print "Userid	Shell"
print "------	-----"
FS=":"
}

{
print $1 "	" $7
}

END {
print "This concludes the listing"
}
#执行gawk命令截取/etc/passwd输出
#gawk -f gawk.awk /etc/passwd

##########################################
cat script3.gawk
{
text = "'s home directory is "
print $1 text $6
}

gawk -F: -f script3.gawk /etc/passwd
root s home directory is /root

# cat f.awk
# BEGIN{str="This is a test string" ;FS=":"}
# {print $n
# gawk -f script1 n=2 data1
# gawk -f script1 n=3 data1

awk 'BEGIN{FS=","} /test/{print $1}' data
