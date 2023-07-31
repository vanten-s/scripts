#!/bin/bash

folder="$(ls ~/.password-store/ | sed -e 's/\.gpg$//' | ~/.local/bin/dmenu -i)"

if [ -z $folder ];
then
    exit
else
    suboptions=$(pass show $choice)
fi

choice="$(ls ~/.password-store/$folder | sed -e 's/\.gpg$//' | ~/.local/bin/dmenu -i)"

if [ -z $choice ];
then
    exit
else
    xdotool type $(pass show $folder/$choice | grep username: | sed 's/username: //')
fi

