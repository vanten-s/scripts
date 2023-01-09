#!/bin/sh

if ! playerctl status &> /dev/null;
then
    exit
fi

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
    combined="%{T4}⏸ %{T-} $combined"
fi

if [ "Playing" == $player_status ];
then
    combined="%{T4}▶ %{T-} $combined"
fi

echo $combined


