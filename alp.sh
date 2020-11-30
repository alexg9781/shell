#!/bin/bash
#echo PS1='\e[32;1m$? [\u@\h \W]$\e[0m:' >> /etc/profile


#过滤ip
tail -n 500 /var/log/secure| grep "Failed password" | \
egrep -o "([0-9]{1,3}\.){3}[0-9]{1,3}"|sort -rn | uniq -c | awk '$1>=4 {print $2}'


#!/bin/bash
#download latest CURL file automatically

curl -s -o /home/tiandi/curl http://curl.haxx.se/download/curl


check_url=$(wget -nv --spider $quote_url 2>&1)   #non-verbose 精简输出信息
# 字符串参数扩展（string parameter expansion）允许对保存在 check_url 中的
# 字符串进行搜索。可以把字符串参数扩展视为sed的另一种简单快速的替代形式。在搜索关键词
# 周围加上通配符（ *error404* ），这样可以搜索整个字符串。如果找到了， echo 命令会使得字
# 符串 error404 被保存在 bad_url 变量中。要是没有找到， bad_url 变量中包含的就是 check_url
# 变量中的内容
bad_url=$(echo ${check_url/*error404*/error404})

