#!/bin/bash

#创建4个sh

for (( i=1; i<=4; i++));do
	echo '#!/bin/bash' > $i.sh
	chmod +x $i.sh
done


#过滤ip
tail -n 500 /var/log/secure| grep "Failed password" | \
  egrep -o "([0-9]{1,3}\.){3}[0-9]{1,3}"|sort -rn | uniq -c | awk '$1>=4 {print $2}'

#sed a 匹配lo行后,行下加入
sed -i "/lo/a -A INPUT -s $i -m state --state NEW -m tcp -p " filename

#在第一到5行行前添加1 这个字符
sed '1，5s/^/&1 /g' ip.txt

#awk赋值
awk -v I="var" '{if(I==$1)print $2}' ip.txt

