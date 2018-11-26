#!/bin/bash
# 0 means pressed, 1 means not pressed

let button=$(gpio read 5)
while test $button -eq 1;
do 
	echo wait
	let button=$(gpio read 5)
	sleep 0.25
    
done
while test $button -eq 0;
        do      
                
                echo pressed
                let button=$(gpio read 5)
                sleep 0.25
        done

echo FINISH
