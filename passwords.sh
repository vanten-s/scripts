#!/bin/bash

setxkbmap se

folder="$(ls ~/.password-store | dmenu -i)"

if [ -z $folder ];
then
    exit
else
    echo "Something!"
fi

choice="$(ls ~/.password-store/$folder | sed -e 's/\.gpg$//' | dmenu -i)"

if [ -z $folder ];
then
    exit
else
    xdotool type "$(pass show $folder/$choice)"
fi


