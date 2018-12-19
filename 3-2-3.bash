#!/bin/bash
#Description: 3-2-3(亂數密碼產生器)
#Write by: cc104 鄭景文 13 
#Version: v0.0.0


declare -a arrayPW

arrayALL=(a b c d e f g h i g k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9)

#CHECK PASSWORD
flag="ERR"
while [ $flag != "OK"  ]
do
	read -p "Do you want Number ? (Y/N) :" num
	read -p "Do you want Alphbet ? (Y/N) :" alp
	read -p "How long go you want ?  :" lon
	if [ $num == "Y" -o $alp == "Y" ] && [ $lon -ge 1 ] 2>/dev/null 
	then
		flag="OK"
	else
		echo "Please try again........."
		echo ""
		continue
	fi	
done

#PW FUNCTION
function PW () {
	pw=""
	for (( x=1; x<=$lon; x=x+1  ))
	do
		let y=$RANDOM*$1/32767
		if	[ $y -lt 52 ]	
		then
			alpck="OK"
		else	
			numck="OK"
		fi
		z=${arrayALL[$y]}
		pw=$pw$z
	done
}

function PW2 () {
	pw=""
	for (( x=1; x<=$lon; x=x+1  ))
	do 
		let y=$RANDOM*10/32767
		pw=$pw$y
	done
}

#PASSWORD
flag="OK"
while [ $flag == "OK"  ]
do
	if [ $num == "Y" -a $alp == "Y" ]
	then
		if [ $lon -eq 1 ]
		then	
			echo ""
			echo "ERROR!!!"
			echo "your number should more then 1 "
			exit 0
		fi
		PW 62
		if [ $alpck != "OK" -o $numck != "OK" ]
		then
			flag="OK"
		fi
	elif [ $num != "Y" -a $alp == "Y" ]
	then
		PW 52
	else
		PW2
	fi
	flag="OVER"
done
echo ""
echo "Your Password "
echo " $pw  "


exit 0
