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
MUTE=$(echo $AMIXER | grep -o '\[off\]' | tail -n 1)

if cat /tmp/addr.tmp; then
    notify-send "Headphones" "$VOLUME/100" -h int:value:$VOLUME -r "$(cat /tmp/addr.tmp)" -p > /tmp/addr.tmp
else
    notify-send "Headphones" "$VOLUME/100" -h int:value:$VOLUME -p > /tmp/addr.tmp
fi

