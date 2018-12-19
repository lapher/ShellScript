#!/bin/bash
#Description: 2-2-9A (平方公尺、坪的轉換)
#Write by: cc104 鄭景文 13 
#Version: v0.0.0

flag="err"
while [ $flag == "err"  ]
do
	read -p "Which option do you want? (1)Square meter >>> 坪 (2)坪 >>> Square meter: " varSelect
	if [ $varSelect -eq 1 -o $varSelect -eq 2 ]
	then
		flag="ok"
	else
		echo "Please try again...."
	fi
done
case $varSelect in
	1)
	bash ./2-2-9B.bash $varSelect
	;;
	2)
	bash ./2-2-9B.bash $varSelect
	;;
	*)
	exit 1
esac



exit 0

