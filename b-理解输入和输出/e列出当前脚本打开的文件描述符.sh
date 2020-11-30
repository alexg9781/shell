#!/bin/bash

# testing lsof with file descriptors
# 要想知道进程的当前PID，可以用特殊环境变量 $$ （shell会将它设为当前PID）。 
# -a 选项用来对其他两个选项的结果执行布尔 AND 运算

exec 3>test
exec 6>test1
exec 7<test2

/usr/sbin/lsof -a -p $$ -d0,1,2,3,6,7


# COMMAND  正在运行的命令名的前9个字符
# PID  进程的PID
# USER  进程属主的登录名
# FD  文件描述符号以及访问类型（ r 代表读， w 代表写， u 代表读写）
# TYPE  文件的类型（ CHR 代表字符型， BLK 代表块型， DIR 代表目录， REG 代表常规文件）
# DEVICE  设备的设备号（主设备号和从设备号)
# SIZE  如果有的话，表示文件的大小
# NODE  本地文件的节点号
# NAME  文件名


