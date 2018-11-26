#!/bin/bash
# 4 is the buzzer

for i in {1..16}
do
	if [ $i -eq "16" ]; then
	./setbits.sh 0
	gpio write 4 1
	sleep 1
	gpio write 4 0
	
	else
	./waitForButtonPress.sh
	./setbits.sh $i
	fi
done


echo FINISH
