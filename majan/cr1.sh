#!/bin/bash

svname="$(cat svname)"

function dekaruro() {
	rec=$(mosquitto_sub -h "$svname" -t "sc$1" -C 1)
	stt=$(echo $rec | sed 's/,.*//g')
	mes=$(echo $rec | cut -d ',' -f 2)
	pie=$(echo $rec | cut -d ',' -f 3-)
}

function show() {
	trs=$(echo $pie | sed 's/,//g' | sed 's/[xyzw]//g' | ./dict.sh | sed 's/ //g')

	for i in {1..18}
	do
		echo -n "" > "str$i$1"
	done

	length=${#trs}
	tur=1
	for ((i = 0; i < length; i++)); do
		case $tur in
			1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17)
				echo -n "${trs:i:1} " >> "str$tur$1"
				echo -n " " >> "str$tur$1"
        		((++tur)) ;;
			18)
				echo -n "${trs:i:1} " >> "str18$1"
				echo -n " " >> "str18$1"
				tur=1 ;;
		esac
	done

	for i in {1..18}
	do
		echo "" >> "str$i$1"
	done

	echo "１　２　３　４　５　６　７　８　９　10　11　12　13　14"
	echo "｜　｜　｜　｜　｜　｜　｜　｜　｜　｜　｜　｜　｜　｜ "
	for i in {1..18}
	do
		cat "str$i$1"
	done
}


while true; do
	dekaruro "$1"


	show 1
exit
	if [ "$stt" == "s" ]; then
		show
		echo $pie > "pie$1"

		


		./pitenti.sh piei1
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
		sleep 1
		mosquitto_pub -h "$svname" -t cs1 -m "$yn"
		echo sent
	fi

	if [ "$stt" == "w" ]; then
		pie=$(echo $rec | sed 's/i,//g' )
		echo $pie > piei1	
		echo "１ ２ ３ ４ ５ ６ ７ ８ ９ 10 11 12 13 14"
		echo "｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜ ｜"
		./pitenti.sh piei1
	exit
	fi




done

exit
