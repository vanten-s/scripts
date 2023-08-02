#!/bin/bash

LOCATION=$(echo -n | dmenu -p Location?)

xdotool type $(echo -e "$LOCATION\n$(date +%s)" | $HOME/scripts/otp/venv/bin/python $HOME/scripts/otp/load.py)

