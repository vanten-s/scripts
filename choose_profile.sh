#!/bin/bash

PROFILE=$(ls $HOME/profiles | $HOME/.local/bin/dmenu -i)

cd $HOME/profiles/$PROFILE
./.install.sh


