#!/bin/bash
echo "game start"

#get pie list

while true; do

	if [ your == "player" ]; then
		echo "your turn \n select pie to throw"
		echo "1 2 3 4 5 6 7 8 9 10 11 12 13"
		./pitenti
		cat tentied.txt
		read pinum

		echo -n $name $turn $pinum
	fi

mosquitto_sub -h localhost -t testopic
while true; do
	mosquitto_sub -h localhost -t testopic
	sleep 1
done

done
exit
