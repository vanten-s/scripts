#!/bin/bash

folder="$(ls ~/.password-store/ | sed -e 's/\.gpg$//' | dmenu -i)"

if [ -z $folder ];
then
    exit
else
    suboptions=$(pass show $choice)
fi

choice="$(ls ~/.password-store/$folder | sed -e 's/\.gpg$//' | dmenu -i)"

if [ -z $choice ];
then
    exit
else
    xdotool type $choice
fi

