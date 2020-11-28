#使用多个命令
echo "My name is Rich" | gawk '{$4="Christine"; print $0}'

awk 'NR==3' passwd  #已处理的输入记录数,答应第三行

gawk -F: '$4 == 0{print $1}' /etc/passwd
awk '$3 ~ /^1/' passwd  #匹配操作符,指定匹配操作符、数据字段变量以及要匹配的正则表达式,第三列以1开头的字段行

