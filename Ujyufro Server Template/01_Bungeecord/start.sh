#!/bin/bash

SCREEN="proxy" #Put your screen/server name here
SERVICE="BungeeCord.jar" #Enter the name of your server jar here
INITMEM="128M" #Enter min ram
MAXMEM="500M" # Enter max ram

if [ "$#" -eq 1 ]; then
	if [ "$1" == "inscreen" ]; then
		while true
		do
			java -server -Xmx$MAXMEM -Xms$INITMEM -jar $SERVICE nogui
			echo "Server is starting... Push STRG+C to stop it!"
			echo "Restart in:"
			for i in 5 4 3 2 1
			do
				echo "$i..."
				sleep 1
			done
			echo "-- Starting server --"
		done
	fi
else
	screen -S $SCREEN bash $0 inscreen
fi