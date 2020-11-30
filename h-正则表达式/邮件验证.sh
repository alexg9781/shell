#!/bin/bash

#验证邮件 username@hostname
# username 值可用字母数字字符以及以下特殊字符：
# 点号
# 单破折线
# 加号
# 下划线


gawk --re-interval '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\+]+)\.([a-zA-Z]{2,5})/{print $0}'

echo "rich@here.now" | ./isemail
