#!/bin/bash
pinum=0

	mosquitto_pub -h "$cr1name" -t "sc$1" -m "c,捨てる牌を選んでください"

	mosquitto_sub -h "$svname" -t ready -C 1