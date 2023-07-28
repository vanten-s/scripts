#!/bin/bash

PROFILE=$(ls $HOME/profiles | $HOME/.local/bin/dmenu -i)

$HOME/profiles/$PROFILE/.install.sh


