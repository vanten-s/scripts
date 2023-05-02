#!/bin/bash

notify-send.py "Spotify" "$(playerctl -p spotify metadata title)"

