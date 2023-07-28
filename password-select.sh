#!/bin/bash

folder="$(ls ~/.password-store/ | sed -e 's/\.gpg$//' | ~/.local/bin/dmenu -i)"

if [ -z $folder ];
then
    exit
fi

choice="$(ls ~/.password-store/$folder | sed -e 's/\.gpg$//' | ~/.local/bin/dmenu -i)"

if [ -z $choice ];
then
    exit
fi

xdotool type "$(pass show $folder/$choice | head -n1)"

