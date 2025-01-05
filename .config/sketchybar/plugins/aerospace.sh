#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)

echo "FOCUSED WORKSPACE IS $FOCUSED_WORKSPACE"

if [ "1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
else
    sketchybar --set $NAME background.drawing=off
fi