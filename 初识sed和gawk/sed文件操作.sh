#!/bin/bash
# (1) 一次从输入中读取一行数据。
# (2) 根据所提供的编辑器命令匹配数据。
# (3) 按照命令修改流中的数据。
# (4) 将新的数据输出到 STDOUT
## sed options script file
# -e script		在处理输入时，将 script 中指定的命令添加到已有的命令中
# -f file		 	在处理输入时，将 file 中指定的命令添加到已有的命令中
# -n				不产生命令输出，使用 print 命令来完成输出

#字符替换
sed 's/dog/cat/' data.txt
sed -e 's/brown/green/; s/dog/cat/' data1.txt
sed -e '
> s/brown/green/
> s/fox/elephant/
> s/dog/cat/' data1.txt

# cat script1.sed
# s/brown/green/
# s/fox/elephant/
# s/dog/cat/
sed -f script1.sed data1.txt

#向文件写入,从date中读取2到5两行到tmp中
sed '2,5w tmp' data
#向数据流末尾添加数据
sed '$r test' data

#从文件读取，从data中的第3行插入tmp文件
sed '3r ./tmp' data

#从文件读取，查询到"lazy al"字段后插入tmp文件的内容
sed '/lazy al/r tmp' data 

#占位文本更换为文件内容
sed '/list/ {
r test
d
}' data
