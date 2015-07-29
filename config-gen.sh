#!/bin/bash

myvar=0
while [ $myvar -le 9 ] 
do 
	echo $myvar"haha.jpg"
	bash -c "cp config.json config"$myvar".json"
	pattern='s/"server_port":1181/"server_port":1181'$myvar'/g'
	echo $pattern	
	sed -ie -- $pattern "config"$myvar".json"
	pattern='s/linode_ss_4/geidajiaHAHA/g'
	sed -ie -- $pattern "config"$myvar".json"
	myvar=$(( $myvar + 1))
done
