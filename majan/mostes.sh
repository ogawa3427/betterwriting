#!/bin/bash
mosquitto_sub -h localhost -t testopic
while true; do
	mosquitto_sub -h localhost -t testopic
	sleep 1
done
exit
