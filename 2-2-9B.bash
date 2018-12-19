#!/bin/bash
#Description: 2-2-9B (平方公尺、坪的轉換)
#Write by: cc104 鄭景文 13 
#Version: v0.0.0

case $1 in
	1)
	read -p "Input your number(m2): " varM
	var1=$varM
	[ -z $var1 ] && echo "ERROR!!!" && exit 1
	expr $var1 "+" 10 &>/dev/null
	if [ $? -eq 0 ]
	then
	varA=$(echo "scale=5; $varM*0.3025" | bc )
	echo "$varM (m2) = $varA  (坪)"
	else
	echo "ERROR!!!" && exit 1
	fi
	;;
	2)
	read -p "Input your number(坪): " d
	var2=$d
	[ -z $var2 ] && echo "ERROR!!!" && exit 1
	expr $var2 "+" 10 &>/dev/null
	if [ $? -eq 0 ]
	then
	varB=$(echo "scale=5; $d*3.3058" | bc )
	echo "$d (坪) = $varB (m2)"
	else
    echo "ERROR!!!" && exit 1
	fi
	;;
	*)
	echo "Please input number!!!"
esac

exit 0
