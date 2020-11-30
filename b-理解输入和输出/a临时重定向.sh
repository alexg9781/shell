#!/bin/bash
# testing STDERR messages

echo "This is an error " >&2    #重定向错误
echo "This is another error"
echo "This is also an error" >&2


# 文件描述符  缩 写  描 述
# 0	STDIN	标准输入
# 1	STDOUT	标准输出
# 2	STDERR	标准错误

ls -al badfile 2> test4  #重定向错误

#重定向错误和数据
ls -al test test2 test3 badtest 2> test6 1> test7 
ls -al test test2 test3 badtest &> test7   #&> 赋予了错误消息更高的优先级