#!/bin/bash
#sed编辑器基础

#替换标记
sed 's/lazy/ht/' test

#可用的替换标记
#1.数字 表明新闻本将替换第几处模式匹配的地方
sed 's/lazy/ht/2' test
#2.g 表明新文件将会替换所有已有文本出现的地方
sed 's/lazy/ht/g' test
#3.p 表明原来行的内容要打印出来,替换后的 
# -n 选项将禁止sed编辑器输出。但p替换标记会输出修改过的行。只输出被替换命令修改过的行
sed -n 's/lazy/ht/p' test 
#4.w file 将替换的结果写到文件中
sed 's/lazy/ht/w test1' test

#替换字符
sed 's/\/bin\/bash/\/bin\/csh/' /etc/passwd
#或者
sed 's!/bin/bash!/bin/csh!' /etc/passwd

#使用地址
#1.数字方式的行寻址
sed '2s/lazy/cat/' test
sed '2,3s/lazy/cat/' test
sed '2,$s/lazy/cat/' test
#2.使用文本模式过滤器,只修改用户alpine的默认shell
sed '/alpine/s/bash/csh/' /etc/passwd


#组合命令
sed '2{
s/fox/elephant/
s/dog/cat/
}' test
sed '2,${
s/fox/elephant/
s/dog/cat/
}' test

#################
#删除行
sed '3d' test
sed '2,$d' test
sed '/number 1/d' test  #模式匹配删除第一行
#删除两个文本模式来删除某个范围的行，第一个开启删除功能，第二个关闭删除功能，删除了1-3行
sed '/1/,/3/d' test

#插入和附加文本
# insert 指定行前增加一个新行
# append 指定行后增加一个新行
# change 修改数据流中整行文本的内容
sed '3i\
This is an appended line.' test #插入数据到第三行

echo "Test Line 2" | sed 'a\Test Line 1'

sed '$a\
This is a new line of text.' test

#修改行
sed '3c\
This a changed line of text.' test
sed '/number 1/c\
This a changed line of text.' test  #文本模式修改,匹配“number 1”
#替换两行文本为一行文本
#sed '2,3c\
#This a changed line of text.' test

#转换命令，处理单个字符
#转换（ transform ）命令（ y ）是唯一可以处理单个字符的sed编辑器命令，前后一一对应
sed 'y/123/789/' test

#回顾打印
# p 打印sed编辑器输出行
# -n 禁止其他行，只打印包含匹配文本模式的行
sed -n '/number 3/p' test
sed -n '2,3p' data6.txt

#查看修改之前的行和修改之后的行
#sed -n '/3/{
#p
#s/line/test/p
#}' test

# 打印行号
sed '=' test

#打印指定的行和行号
sed -n '/lazy/{
=
p
}' test

#列出行 打印数据流中的文本和不可打印的ASCII字符，任何不可打印的字符都用它们的八进制值前加一个反斜线或标准C风格的命名法，比如用\t来代表制表符
# 列出（ list ）命令（ l ）
sed -n 'l' test

