#!/bin/bash



#get pie list
svname="localhost"
while true; do

	#受信からの分割
rec=$(mosquitto_sub -h "$svname" -t sc1 -C 1 )
echo $rec
stt=$(echo $rec | sed 's/,.*//')
echo "$stt"

	if [ "$stt" == "i" ]; then

		pie=$(echo $rec | sed 's/i,//g' )
		echo $pie
		echo $pie > piei1

		echo "your turn, select pie to throw"
		echo "１ ２ ３ ４ ５ ６ ７ ８ ９ Ａ Ｂ Ｃ Ｄ Ｅ"
		echo "｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜"

		./pitenti.sh
		#cat tentied13.txt
		#read pinum
exit
		#mosquitto_pub -h localhost -t testopic -m "$(echo $pinum)"
	fi

	if [ "$your" == "waiter" ]; then
		:
	fi

	if [ "$your" == "choser" ]; then
		echo "do you want Rong?"
	fi

	sleep 1

done

exit
