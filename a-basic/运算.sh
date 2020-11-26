#!/bin/bash
#使用内联重定向计算表达式
var1=10.45
var2=43.67
var3=33.2
var4=71

#bc命令是任意精度计算器语言
# var3=`echo "scale=4; $var1 / $var2" | bc`
var5=`bc <<EOF
scale=4
a1 = $var1 * $var2
b1 = $var3 * $var4
a1 + b1
EOF
`
echo The final answer for this mess is $var5

#数学运算
#var3=$(expr $var2 / $var1)
var4=$[$var1 * ($var2 - $var3)]
echo -e '\nThe final result is '$var4


exit 0