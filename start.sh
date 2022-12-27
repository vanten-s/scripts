#!/bin/bash

autorandr --load work

sleep 0.5
killall polybar
polybar -r &
picom --experimental-backend &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
setxkbmap -layout se
deadd-notification-center &
sleep 0.5
nitrogen --restore &

