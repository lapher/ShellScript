#!/bin/bash 
#Description: 3-1-3(while累加 END結束)
#Write By :   CC104  鄭景文  13
#Version:

read -p "pleas input a number" varNo 

x=-1
varSum=0
while [ 0 ]
do 
    let x=$x+1
	let varSum=$varSum+$varNo
	let varAverage=$varAverage+$varNo

    if [ $varNo -ge 0 -o  $varNo -le 0 ]   
    then
        echo "OK"
        read -p "continue input a number or input END to stop" varNo 
		echo "======================="
    else
		varAve=$varSum/$x
		echo -n "Average: "
        echo "scale=2 ; $varAve " | bc 
        echo "Sum : $varSum"
        break
    fi
    
done


exit 0
