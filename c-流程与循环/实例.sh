#!/bin/bash
# finding files can exec in the PATH
IFS.OLD=$IFS
IFS=:
for folder in $PATH ;do
    echo "$folder:"
	for file in $folder/* ;do
		if [ -x $file ];then   #检查 file 是否存在并可执行
			echo " $file"
		fi
	done
IFS=$IFS.OLD
done


#!/bin/bash
# process new user accounts
input="users.csv"
while IFS=',' read -r userid name ;do
	echo "adding $userid"
	useradd -c "$name" -m $userid
done < "$input"

#     users.csv
# rich,Richard Blum
# christine,Christine Bresnahan
# barbara,Barbara Blum
# tim,Timothy Bresnahan