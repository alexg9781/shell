#!/bin/bash
# using an alternative file descriptor
exec 3>test13out
echo "This should display on the monitor"
echo "and this should be stored in the file" >&3
echo "Then this should be back on the monitor"



##############################
#!/bin/bash
# redirecting input file descriptors
exec 6<&0
exec 0< testfile
count=1
while read line ;do
	echo "Line #$count: $line"
	count=$[ $count + 1 ]
done

exec 0<&6
	read -p "Are you done now? " answer
case $answer in
	Y|y) echo "Goodbye";;
	N|n) echo "Sorry, this is the end.";;
esac