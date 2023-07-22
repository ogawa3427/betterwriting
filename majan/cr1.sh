#!/bin/bash



#get pie list
svname="localhost"
while true; do

	#受信からの分割
	mosquitto_sub -h "$svname" -t sc1 -C 1 > rec
	rec=$(cat rec)

	stt=$(echo $rec | sed 's/,.*//')
echo "$stt"

	if [ "$stt" == "i" ]; then

		pie=$(echo $rec | sed 's/i,//g' )
#		echo $pie
		echo $pie > piei1

		
		echo "１ ２ ３ ４ ５ ６ ７ ８ ９ 10 11 12 13 14"
		echo "｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜"

		./pitenti.sh
	sleep 1
		mosquitto_pub -h "$svname" -t cs1 -m "ok"
	echo ok
	fi

	if [ "$stt" == "p" ]; then
		echo plz select
		read pinum
		mosquitto_pub -h "$svname" -t cs1 -m "$pinum"
		echo sent
	fi

	if [ "$stt" == "r" ]; then
		echo $rec | sed 's/^.,//g' | ./dict.sh
		echo "ron?"
		read yn
		mosquitto_pub -h "$svname" -t cs1 -m "$yn"
		echo sent
	fi

	if [ "$stt" == "w" ]; then
		pie=$(echo $rec | sed 's/i,//g' )
		echo $pie > piei1	
		echo "１ ２ ３ ４ ５ ６ ７ ８ ９ 10 11 12 13 14"
		echo "｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜"
		./pitenti.sh
	exit
	fi

	if [ "$your" == "choser" ]; then
		echo "do you want Rong?"
	fi



done

exit
