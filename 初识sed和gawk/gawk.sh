#使用多个命令
echo "My name is Rich" | gawk '{$4="Christine"; print $0}'

