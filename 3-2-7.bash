#!/bin/bash 
#Description: 3-2-7 (1A2B)
#Write By :   CC104  鄭景文  13
#Version:

declare -a arrayANS
declare -a arrayG		#Guess
declare -a arrayT		#test
declare -a arrayAB      #?A?b

function RAN () {

	let varANS=$RANDOM*10/32767
}




#RANDOM
for (( y=0; y<=3; y=y+1 ))
do	
	RAN
	flag="error"
	until [ $flag == "ok"   ]
	do
		for (( i=0; i<$y; i=i+1 ))
		do
			while  [ ${arrayANS[$i]} == $varANS  ] 
			do
				RAN
				i=0
			done
		done
		flag="ok"
	done
	arrayANS[$y]=$varANS
done
#echo ${arrayANS[*]}

num=0
#START
ansFlag="ERROR"
while [ $ansFlag == "ERROR"  ]
do
	
#GAME START !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo "GAME START !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
read -p "start:    " varG

#CHECK
if [ ! -z ${varG:4:1} ] 
then
	echo " Please try again "
	continue
fi

#HISTORY
#if [ $varG == "history"   ]
#do
#	echo $
#done
#fi

x1=${varG:0:1}
x2=${varG:1:1}
x3=${varG:2:1}
x4=${varG:3:1}
arrayT=($x1 $x2 $x3 $x4)
echo ${arrayT[*]}
a=0
b=0

#SAVE
arrayG[$num]=$varG

#echo "CHECK NUMBER B !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
for (( x=0; x<=3; x=x+1  ))
do
	for (( y=0; y<=3; y=y+1 ))
	do
		asdf=${arrayT[$y]}
		qwer=${arrayANS[$x]}
		if [ $asdf == $qwer ]
		then
			let b=$b+1
		fi
	done
done

#CHECK NUMBER A !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
for ((  x=0; x<=3; x=$x+1  ))
do 
	xx1=${arrayT[$x]}	
	aa1=${arrayANS[$x]}
	if [ $xx1 == $aa1  ] 
	then	
		let a=$a+1
		let	b=$b-1
#		echo "OK"
	fi
done

#SAVE
arrayAB[$num]=$a$b
let num1=$num
let num=$num+1
#YOUR ANSWER
echo "====================="
echo " Guess: $num "
echo " $a A $b B "
echo ""
echo " History:  "

for	(( x=0; x<=$num1; x=x+1 ))
do
	echo " ${arrayG[$x]} : ${arrayAB[$x]:0:1} A ${arrayAB[$x]:1:1} B "

done
echo "====================="
echo ""
echo ""

# Ture? Fals?
if [ $a -eq 4  ]
then
	ansFlag="OK"
	echo "CORRECT !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
else
	ansFlag="ERROR"
fi

#END
done


exit 0 









