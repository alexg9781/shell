#记录登录变量
# $ cat .my.cnf
# [client]
# password = test
# $ chmod 400 .my.cnf

# mysql database -u test

#!/bin/bash
# send data to the table in the MySQL database
MYSQL=$(which mysql)
if [ $# -ne 4 ];then
	echo "Usage: mtest3 empid lastname firstname salary"
else
	statement="INSERT INTO employees VALUES ($1, '$2', '$3', $4)"
	$MYSQL mytest -u test << EOF
	$statement
EOF
if [ $? -eq 0 ];then
	echo Data successfully added
else
	echo Problem adding data
	fi
fi

# ./mysql-test 5 Blum Jasper 100000


##########################################
# -B 选项指定mysql程序工作在批处理模式运行
# -s （ silent ）选项用于禁止输出列标题和格式化符号
#!/bin/bash
# redirecting SQL output to a variable
MYSQL=$(which mysql)
dbs=$($MYSQL mytest -u test -Bse 'show databases')
for db in $dbs
do
echo $db
done