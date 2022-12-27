#!/bin/bash

xdotool type "$(cat ~/scripts/metadata/bookmarks.txt | dmenu -i)"


