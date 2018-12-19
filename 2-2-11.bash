#!/bin/bash 
#Description: 2-2-11(房貸 用CLI參數傳遞)
#Write By :   CC104  鄭景文  13
#Version:

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ] 
then
	echo " 此用法為:"
	echo " $0 本金 利率(年) 償還期數(年) 選項(1 or 2)"
	echo " 選項為: (1) 金定額攤還法"
	echo " 選項為: (2) 本息定額攤還法"
	exit 0
	fi

x=$1			#本金
y=$2			#利率(年)
let z=$3*12		#期數(年)
opt=$4			#選項
let xr=$(($x/$z))			#償還本金
#yr=($x-$xr)*(y/100)	#償還利息
#allr=$xr+$yr	#償還本息

#償還方式
case $opt in
1)	#金定額攤還法
	for (( a=1;a<=$z;a++ ))
	do
		yr=$(echo "($x-$xr) * $y " |bc)
		let x=$x-$xr
		echo -e "第$a月\t 應付本金:$xr\t 應付本息:$yr\t"	
	done	
	;;
2)	#本息定額攤還法
	echo "目前為提供此功能 請多包含..."
	;;
*)	
	echo "選項錯了阿...." 
	exit 0
	;;
esac

exit 0
	









