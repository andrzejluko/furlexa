#!/bin/bash
#Sleep times may vary for your hardware and distribution.
#This is the core script which runs at startup and calls the other scrips in the repository

lxterminal -t "NPM" --working-directory="/home/pi/Desktop/alexa-avs-sample-app/samples/companionService" -e "./npm_start.sh" &
sleep 15 
lxterminal -t "JVM" --working-directory="/home/pi/Desktop/alexa-avs-sample-app/samples/javaclient" -e "./mvn_exec.sh" &
sleep 3m
lxterminal -t "WWA" -e "./wwa.sh" &
