#!/bin/bash
default=$(pamixer --get-default-sink | awk '{print $1}' | tail -1)

if [ $default = "0" ]
then
    pactl set-default-sink 4
else
    if [ $default = "4" ]
    then
	pactl set-default-sink 0
    fi
fi
