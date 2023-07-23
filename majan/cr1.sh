#!/bin/bash

svname="$(cat svname)"

function ready() {
	mosquitto_pub -h "$svname" -t cs1 -m "ok"
}

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
#main loop

    dekaruro "$1"

	if [ "$stt" == "s" ]; then
		show $1
		ready
		ready
		ready
		ready
	fi

	if [ "$stt" == "c" ]; then
		echo $mes
		while true; do
			read pien
			if [[ $pien == [1-14] ]]; then
				break
			else
				echo "you can say 1-14"
			fi
		done
		mosquitto_pub -h "$svname" -t cs$1 -m "$pien"
		echo sent
	fi

	if [ "$stt" == "q" ]; then
		echo $pie | sed sed 's/[xyzw]//g' | ./dict.sh
		echo "Ron?"
		while true; do
			read que
			if [ $que == y ] || [ $que == n ];then
				break
			else
				echo "you can say y/n"
			fi
		mosquitto_pub -h "$svname" -t cs$1 -m "$que"
		echo sent
	fi

done

exit
