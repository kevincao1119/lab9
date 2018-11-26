#!/bin/bash
# 4 is the buzzer

for value in {1..16}
do
	if(($value -eq "16"))
	then
	./setbits.sh 0
	gpio write 4 1
	sleep 1
	gpio write 4 0
	
	else
	./waitForButtonPress.sh
	./setbits.sh "$value"
	fi
done


echo FINISH
