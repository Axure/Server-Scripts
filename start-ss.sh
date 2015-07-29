#!/bin/bash

myvar=0
while [ $myvar -le 9 ] 
do
	bash -c "ss-server -c config"$myvar".json -f 1234"$myvar 
	myvar=$(( $myvar + 1))
done
