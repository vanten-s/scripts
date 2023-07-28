#!/bin/bash

URL=$(echo -n | ~/.local/bin/dmenu -p "URL?")
USERNAME=$(echo -n | ~/.local/bin/dmenu -p "USENAME?")
SERVICE=$(echo -n | ~/.local/bin/dmenu -p "SERVICE?")
PASS_NAME=$(echo -n | ~/.local/bin/dmenu -p "PASS NAME?")

if [ -z $USERNAME ]; then
    USERNAME="vanten-s@vanten-s.com"
fi

printf "hii\nurl: $URL\nusername: $USERNAME" | pass insert -m $SERVICE/$PASS_NAME
pass generate -i $SERVICE/$PASS_NAME

