gawk数据字段和记录变量

变 量  		描 述
FIELDWIDTHS	由空格分隔的一列数字，定义了每个数据字段确切宽度
FS 			输入字段分隔符
RS 			输入记录分隔符
OFS 		输出字段分隔符
ORS 		输出记录分隔符


##########################
gawk 'BEGIN{FS=","; OFS="--"} {print $1,$2,$NF}' data
# data11--data12--data13

gawk 'BEGIN{FIELDWIDTHS="3 5 2 5"}{print $1,$2,$3,$4}' data  #不适用于变长的字段
# 1005.3247596.37
# 100 5.324 75 96.37

gawk 'BEGIN{FS="\n"; RS=""} {print $1,$4}' data2

# FNR 变量含有当前数据文件中已处理过的记录数，NR变量则含有已处理过的记录总数
gawk 'BEGIN{FS=","}{print $1,"FNR="FNR}' passwd passwd

