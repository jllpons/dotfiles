#!/usr/bin/env sh

sketchybar --add item     calendar right               \
           --set calendar update_freq=15               \
                          script="~/.config/sketchybar/plugins/time.sh" \
                          icon.color=$WHITE1           \
                          icon.font="$FONT:Black:12.0" \
                          icon.padding_left=15         \
                          label.width=55               \
                          label.align=right            \
                          label.color=$WHITE1           \
                          label.padding_right=15       \
                          align=center                 \
                          background.color=$BLACK1      \
                          background.height=26         \
                          background.corner_radius=7 \
                          background.padding_left=5 \


