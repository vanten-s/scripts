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
    combined=$(echo $title | $HOME/scripts/scroll_text.py)
else
    combined=$(echo "$artist - $title" | $HOME/scripts/scroll_text.py)
fi

if [ "Paused" == $player_status ];
then
    combined="%{T2}⏸%{T-} $combined"
fi

if [ "Playing" == $player_status ];
then
    combined="%{T1}▶%{T-} $combined"
fi

echo "$combined"


