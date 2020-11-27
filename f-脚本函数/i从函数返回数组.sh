
#!/bin/bash

# returning an array value

function arraydblr {
	local origarry
	local newarray
	local elements
	local i
	origarry=(`echo "$@"`)
	newarray=(`echo "$@"`)
	elements=$[ $# - 1 ]
	for (( i=0; i<=$elements; i++ ))
	{
		newarray[$i]=$[ ${origarry[$i]} * 2 ]
	}

	echo ${newarray[*]}
}

myarray=(1 2 3 4 5)
echo "The original array is : ${myarray[*]}"
arg1=`echo ${myarray[*]}`
result=(`arraydblr $arg1`)
echo "The new array is : ${result[*]}"


# The original array is: 1 2 3 4 5
# The new array is: 2 4 6 8 10