#!/bin/bash

sed '=' test | sed 'N; s/\n/ /'  #加入行号 cat -n

#加倍行间距
sed 'G' data
sed '$!G' data
sed '/^$/d ; $!G' data

sed '/./,/^$/!d' data  #删除过多的空白行
sed '/./,$!d' passwd   #删除开头的空白行
sed '{
:start
/^\n*$/{$d; N; b start }
}' passwd			   #删除结尾的空白行