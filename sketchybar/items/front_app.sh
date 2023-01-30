#!/usr/bin/env sh

FRONT_APP_SCRIPT='sketchybar --set $NAME label="$INFO"'

sketchybar --add       item         front_app left                \
           --set       front_app    script="$FRONT_APP_SCRIPT"    \
                                    icon.drawing=off              \
                                    background.padding_left=0     \
                                    background.padding_right=10   \
                                    label.color=$WHITE            \
                                    label.font="$FONT:Black:12.0" \
                                    associated_display=active     \
           --subscribe front_app    front_app_switched
