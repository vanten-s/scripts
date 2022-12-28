#!/bin/sh

title="$(playerctl metadata title)"
artist="$(playerctl metadata artist)"
player_status="$(playerctl status)"

if [ -z "$artist" ];
then
    combined="$title"
else
    combined="$artist - $title"
fi

if [ "Paused" == $player_status ];
then
    combined="⏸︎ $combined"
fi

if [ "Playing" == $player_status ];
then
    combined="▶ $combined"
fi

echo $combined


