#!/bin/bash

if [ "$1" == "inc" ]; then
   pulsemixer --change-volume +5
fi

if [ "$1" == "dec" ]; then
   pulsemixer --change-volume -5
fi

if [ "$1" == "mute" ]; then
   pulsemixer --toggle-mute
fi


VOLUME="$(pulsemixer --get-volume | sed '~s/. .//')"

if [ -z cat /tmp/addr_vol ]; then
    notify-send "Headphones" "$VOLUME/100" -h int:value:$VOLUME -p > /tmp/addr_vol
    notify-send "Didn't find anything!" "Vol.sh didn't find /tmp/addr_vol"
else
    notify-send "Headphones" "$VOLUME/100" -h int:value:$VOLUME -r "$(cat /tmp/addr.tmp)" -p > /tmp/addr_vol
fi

