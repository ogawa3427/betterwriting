#!/bin/bash

echo "game start"

#get pie list

while true; do

	mosquitto_sub -h localhost -t hc1

	if [ "$your" == "player" ]; then
		echo "your turn \n select pie to throw"
		echo "1 2 3 4 5 6 7 8 9 10 11 12 13"
		./pitenti
		cat tentied.txt
		read pinum

		mosquitto_pub -h localhost -t testopic -m "$(echo $pinum)"
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
