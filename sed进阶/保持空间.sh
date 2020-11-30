#!/bin/bash

#h将模式空间保存到保持空间
#H将模式空间附加到保持空间
#g将保持空间复制到模式空间
#G将保持空间保存到模式空间
#x交换模式空间和保持空间的内容

sed -n '/first/{
h
p
n
p
g
p
}' test

sed -n '/first/ {h ; n ; p ; g ; p }' data2.txt  #只反转第一行
sed -n '{n ; p}' passwd   #显示偶数行
sed -n '{1!G ; h ; $p }' passwd #反转文本数据
tac passwd

