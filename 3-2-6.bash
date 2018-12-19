#!/bin/bash
#Description: 3-2-6(大樂透)
#Write by: cc104 鄭景文 13 
#Version: v0.0.0



declare -a arrayANS
declare -a arrayT
declare -a arrayG
declare -a arrayF
#=========FUNCTION============================
#RANDOM no 0 function
function RAN () {
	flag="err"
	while [ $flag == "err" ]
	do
		let num0=$RANDOM*50/32767
		if	[ $num0 -eq 0 ]
		then
			flag="err"
		else
			flag="OK"
		fi
	done
}

#GAME function
function GAME () {
	for (( x=1; x<=6; x=x+1 ))
	do
		RAN
		token=$num0
			for (( y=1; y<$x; y=y+1 ))
			do
				ck=${arrayF[$y]}
				if [ $ck -eq $token ]
				then
					RAN
					token=$num0
					y=0
				fi
			done
		arrayF[$x]=$token
	done
#Sort
	for  (( xr=1; xr<=6; xr++ ))
	do
	    tokenR=${arrayF[$xr]}
	    for (( yr=1; yr<=6; yr++ ))
	    do  
        	checkR=${arrayF[$yr]}
    	    if   [ $tokenR -ge $checkR  ]
	        then
            	tokenR=$checkR
        	    numr=$yr
    	    fi
	    done
    	arrayF[$numr]=99
    	arrayT[$xr]=$tokenR
	done






}





#INPUT function
function INPUT () {
	for (( x=1; x<=6; x=x+1 ))
	do
		tok=${arrayT[$x]}
		arrayANS[$x]=$tok
	done
}


#INPUT2 function
function INPUT2 () {
	for (( x=1; x<=6; x=x+1 ))
	do
		tok=${arrayT[$x]}
		arrayG[$x]=$tok
	done
}

#CHECK function
function CHECK () {
	good=0
	for(( x=1; x<=6; x=x+1 ))
	do
		for (( y=1; y<=6; y=y+1 ))
		do
			ansX=${arrayANS[$x]}
			gusY=${arrayG[$y]}
			if	[ $gusY -eq $ansX  ]
			then
				let good=$good+1
			fi
		done
	done
}




#===================================================

#GAME START!!!!!!!!!
#CHECK number
flag="err"
while [ $flag == "err" ]
do
	read -p "How many tickets do you want ? : " lon
	if [ $lon -ge 1  ]
	then
		flag="ok"
	fi
done

#Output
GAME
INPUT
echo " The Answer is : ${arrayANS[*]}"
echo "================================"


for (( xxx=1; xxx <= $lon; xxx=xxx+1 ))
do 
	GAME
	INPUT2
	CHECK
	echo -e " No.$xxx \t||  ${arrayG[*]} \t|| Correct: $good  "

done




exit 0
