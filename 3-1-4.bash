#!/bin/bash 
#Description: 3-1-4(3次密碼驗證)
#Write By :   CC104  鄭景文  13
#Version:

varPS="root"
let x=0
until [ $x -eq 3 ] 
do
	read -p "Please input password: " varANS

	if [ $varPS == $varANS ]
	then
		echo "GOOD JOB!!!!!!"
		exit 0
	else 	
		echo "Try again"
		let x=$x+1
	fi
done

echo "ERROR !!!!!!!!!"



exit 0

