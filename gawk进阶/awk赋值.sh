#awk赋值
awk -v I="var" '{if(I==$1)print $2}' ip.txt