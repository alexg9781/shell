#!/bin/bash
#echo PS1='\e[32;1m$? [\u@\h \W]$\e[0m:' > /etc/profile
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

#!/bin/bash
#download latest CURL file automatically

curl -s -o /home/tiandi/curl
http://curl.haxx.se/download/curl

check_url=$(wget -nv --spider $quote_url 2>&1)   #non-verbose 精简输出信息
# 字符串参数扩展（string parameter expansion）允许对保存在 check_url 中的
# 字符串进行搜索。可以把字符串参数扩展视为sed的另一种简单快速的替代形式。在搜索关键词
# 周围加上通配符（ *error404* ），这样可以搜索整个字符串。如果找到了， echo 命令会使得字
# 符串 error404 被保存在 bad_url 变量中。要是没有找到， bad_url 变量中包含的就是 check_url
# 变量中的内容
bad_url=$(echo ${check_url/*error404*/error404})


curl http://textbelt.com/text \
-d number=13064159655 \
-d "message= Your Text Message" \
-d 51be00bbef9def903366580a025ac3ea115721cfrakQ0T25RBlDWguRE4c0sSSqJ

curl -X POST http://textbell.com/intl \
       --data-urlencode phone='13064159655' \
       --data-urlencode message='Hello world' \
       -d textbelt
       key=839c213560030c7ce30138e7ea732244e6d27bdeSiqc4I5FXpEpLzJsjlKCan4W1

      textbelt