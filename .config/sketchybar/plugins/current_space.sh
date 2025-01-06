#!/usr/bin/env zsh

update_space() {
    # EVENTUALLY DO MONITOR BASED WORKSPACE NUM USING aerospace list-workspaces --monitor $monitor --visible
    SPACE_ID=$(aerospace list-workspaces --focused)
    echo "Workspace changed to $AEROSPACE_FOCUSED_WORKSPACE"
    echo "Current space is $SPACE_ID"
    sketchybar --set $NAME \
        icon=$SPACE_ID \
        icon.padding_left=9 \
        icon.padding_right=10
}

case "$SENDER" in
"mouse.clicked")
    # Reload sketchybar
    sketchybar --remove '/.*/'
    source $HOME/.config/sketchybar/sketchybarrc
    ;;
*)
    update_space
    ;;
esac
