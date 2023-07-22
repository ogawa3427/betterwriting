#!/bin/bash
svname="localhost"
#main loop
while true; do

	#stt作る
	mosquitto_sub -h "$svname" -t sc1 -C 1 > rec
	rec=$(cat rec)
	stt=$(echo $rec | sed 's/,.*//')
	echo "$stt"

	#init
	if [ "$stt" == "i" ]; then
		#へたとり
		pie=$(echo $rec | sed 's/i,//g' )
		echo $pie > piei2

#init
