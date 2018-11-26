#!/bin/bash


for value in {0..4}
do
	echo $value
	gpio mode $value out
	gpio write $value 0
done

echo 5
gpio mode 5 in
gpio mode 5 up



echo FINISH
