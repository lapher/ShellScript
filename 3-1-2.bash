#!/bin/bash 
#Description: 3-1-2 (while 99乘法表)
#Write By :   CC104  鄭景文  13
#Version:




x=1

while [ $x -le 9 ]
do 

    for (( y=1 ; y<=9 ; y=y+1 ))
    do
	let varall=$x*$y
	if	[ $varall -ge 10   ]
	then
		echo  -e -n " $x * $y = `expr $x \* $y` ||"	
	else
		echo  -e -n " $x * $y = `expr $x \* $y`  ||"
	fi
 
    done
    
    echo ""
    let x=$x+1
done


exit 0
