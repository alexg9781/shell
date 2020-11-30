for file in /root/* ;do
	if [ -d "$file" ];then
		echo "$file is a directory"
	elif
		echo "$file is a file"
	fi
done > output.txt
#done | sort
echo "This completes our travels"