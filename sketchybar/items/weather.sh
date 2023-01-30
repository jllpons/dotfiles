#!/usr/bin/env sh

sketchybar --add item     weather center           \
           --set weather  update_freq=3600               \
                          script="~/.config/sketchybar/plugins/weather.sh" \
                          icon.color=$BLACK            \
                          icon.padding_left=10        \
                          align=center                 \
                          background.color=0xffb8c0e0  \
                          background.height=26         \
                          background.corner_radius=11  \

