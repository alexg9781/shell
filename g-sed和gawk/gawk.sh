
#使用多个命令
echo "My name is Rich" | gawk '{$4="Christine"; print $0}'

awk 'NR==3' passwd  #已处理的输入记录数,打印第三行

gawk -F: '$4 == 0{print $1}' /etc/passwd

#匹配操作符
awk '$3 ~ /^1/' passwd  #指定匹配操作符、数据字段变量以及要匹配的正则表达式,第三列以1开头的字段行
gawk -F: '$1 ~ /root/{print $1,$NF}' /etc/passwd
gawk –F: '$1 !~ /root/{print $1,$NF}' /etc/passwd	#排除正则表达式的匹配

# 数学表达式
# x == y ：值x等于y
# x <= y ：值x小于等于y
# x < y ：值x小于y
# x >= y ：值x大于等于y
# x > y ：值x大于y
gawk -F: '$4 == 0{print $1}' /etc/passwd

#时间函数
#时间戳是指自1970-01-01 00:00:00 UTC到现在，以秒为单位的计数，通常称为epoch time。systime()函数的返回值也是这种形式
gawk 'BEGIN{
date = systime()
day = strftime("%A, %B %d, %Y", date)
print day
}'