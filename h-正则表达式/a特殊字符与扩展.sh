# 正则表达式识别的特殊字符
.*[]^${}\+?|()

. 代表空格或任意一个字符
* 代表任意一个字符或什么也没有
? 代表0个或1个字符
+ 代表1次或多次
| 逻辑OR或

# 其他
echo "3 / 2" | sed -n '/\//p'
sed -n '/^ this is a test$/p' data
sed '/^$/d' data5  #过滤空行
sed -n '/.at/p' data #点号字符，仅匹配一个（空格也是一个字符）
sed -n '/[ch]at/p' data
echo "ieeek" | sed -n '/ie*k/p'  #字符后面放置星号表明该字符必须在匹配模式的文本中出现0次或多次
echo "this is a regular pattern expression" | sed -n '
> /regular.*expression/p'
this is a regular pattern expression   #点号特殊字符和星号特殊字符组合,匹配任意数量的任意字符
echo "bt" | sed -n '/b[ae]*t/p'
echo "beet" | gawk '/be?t/{print $0}'
echo "baet" | gawk '/b[ae]?t/{print $0}'
echo "beet" | gawk '/be+t/{print $0}'
echo "beat" | gawk '/b[ae]+t/{print $0}'
echo "The dog is asleep" | gawk '/cat|dog/{print $0}'
echo "He has a hat." | gawk '/[ch]at|dog/{print $0}'

# 字符组
echo "Yes" | sed -n '/[Yy]es/p'
echo "yEs" | sed -n '/[Yy][Ee][Ss]/p'
sed -n '/[0123]/p' data
sed -n 'c[at]r' date
sed -n '/[^ch]at/p' data   #排除字符，反转字符组

# 区间
[0-9]
[a-z]

echo "18a92" | sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p'
echo "I'm getting too fat." | sed -n '/[a-ch-m]at/p'

#BRE特殊字符组( POSIX基础正则表达式（basic regular expression，BRE）引擎 )
组  描 述
[[:alpha:]]		匹配任意字母字符，不管是大写还是小写
[[:alnum:]]		匹配任意字母数字字符0~9、A~Z或a~z
[[:blank:]]		匹配空格或制表符
[[:digit:]]		匹配0~9之间的数字
[[:lower:]]		匹配小写字母字符a~z
[[:print:]]		匹配任意可打印字符
[[:punct:]]		匹配标点符号
[[:space:]]		匹配任意空白字符：空格、制表符、NL、FF、VT和CR
[[:upper:]]		匹配任意大写字母字符A~Z

# 间隔（interval）
{2}   出现2次
{2,5}  出现2-5次

echo "beet" | gawk --re-interval '/be{1}t/{print $0}'

# 表达式分组
echo "Saturday" | gawk '/Sat(urday)?/{print $0}'
echo "cat" | gawk '/(c|b)a(b|t)/{print $0}'