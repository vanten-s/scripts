#!/bin/bash

xdotool type "$(cat ~/scripts/metadata/bookmarks.txt | ~/.local/bin/dmenu -i)"


