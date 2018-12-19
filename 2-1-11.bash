#!/bin/bash
#Description: 2-1-11(for 99乘法表)
#Write by: cc104 鄭景文 13 
#Version: v0.0.0


read -p "How much sizes do you want? :" varNum

#if not number
if [ $varNum -ge 1 ] 2>/dev/null
then
	echo ""
else
	
	echo " ERROR!! Please bigger than 1 "
	exit 1
fi

echo -ne "  |\t"

for (( x=1 ; x<=$varNum ; x=x+1 ))
do
	echo -ne "$x\t"
done

echo ""

for (( x=1 ; x<=$varNum ; x=x+1 ))
do
	echo -n "========="
done

echo ""

for (( x=1 ; x<=$varNum ; x=x+1 ))
do
	echo -ne "$x |\t"
	for (( y=1 ; y<=$varNum ; y=y+1 ))
	do		
		let varAns=$x*$y
		echo -n -e "$varAns\t"
	done
	echo ""
done

exit 0
