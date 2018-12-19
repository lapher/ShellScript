#!/bin/bash
#Description: 2-1-12(畫星星)
#Write by: cc104 鄭景文 13
#Version: v0.0.0


for (( x=8 ; x>0 ; x=x-1 ))
do
    for (( y=1 ; y<=$x ; y=y+1 ))
    do
	echo -n  "* "
    done
    echo ""

done

exit 0
