#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)

echo "FOCUSED WORKSPACE IS $FOCUSED_WORKSPACE"

if [ "$1" = $(aerospace list-monitors --focused | awk '{print $1}') ]; then
    sketchybar --set $NAME background.drawing=on
    sketchybar --set $NAME label=$FOCUSED_WORKSPACE
else
    sketchybar --set $NAME background.drawing=off
fi

