#!/bin/bash
# testing STDERR messages
# redirecting all to a file

# 脚本执行期间，用exec命令告诉shell重定向某个特定文件描述符
exec 2>test

ls badtest
echo "This is test of redirecting all output"
echo "from a script to another file"

exec 1>test1
echo "This is the end of the script"
echo "but this should go to the testerror file" >&2


##################
# redirecting file input
exec 0< testfile
count=1
while read line ;do
	echo "Line #$count: $line"
	count=$[ $count + 1 ]
done




##################
#!/bin/bash
# storing STDOUT, then coming back to it
# 重定向文件描述符
# 在脚本中临时重定向输出，然后恢复默认输出设置的常用方法
exec 3>&1
exec 1>test14out
echo "This should store in the output file"
echo "along with this line."
exec 1>&3
echo "Now things should be back to normal"

# $ ./test.sh
# Now things should be back to normal
# $ cat test14out
# This should store in the output file
# along with this line.