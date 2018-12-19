#!/bin/bash
#Description: 2-2-7B(BMI) 
#Write by: cc104 鄭景文 13 
#Version: v0.0.0

High=$(echo "scale=2;$1*$1/10000"| bc)
BMI=$(echo "scale=2;$2/$High"|bc)
echo "Your BMI is : $BMI "
exit 0

