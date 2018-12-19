#!/bin/bash
#Description: 2-1-13 (畫星星)
#Write by: cc104 鄭景文 13
#Version: v1.0.0

varAll=8

for (( x=1 ; x<=$varAll ; x=x+1 ))
do
    for (( y=$varAll ; y>=1 ; y=y-1 ))
    do
#	echo $y
 # 	echo $x
#	varLet=let $y>=$x 
	if [ $y -gt $x ] 
	then
	    echo -n "  "
	else
	    echo -n "* "
	fi
	
    done
    echo ""

done

exit 0	







