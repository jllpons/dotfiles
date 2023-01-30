#!/usr/bin/env sh

SPACE_ICONS=(":terminal:" ":pdf:" ":obsidian:" ":firefox:" ":finder:" ":spotify:" "7" "8" "9" "10")
SPACE_CLICK_SCRIPT="yabai -m space --focus \$SID 2>/dev/null"

sid=0
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space      space.$sid left                               \
             --set space.$sid associated_space=$sid                         \
                              icon=${SPACE_ICONS[i]}                        \
                              icon.font="sketchybar-app-font:Regular:17.0" \
                              icon.padding_left=15                    \
                              icon.padding_right=15                       \
                              label.padding_left=0                      \
                              label.padding_right=0                     \
                              icon.highlight_color=$RED                     \
                              background.padding_left=10                     \
                              background.padding_right=0                  \
                              background.color=$BACKGROUND_1               \
                              click_script="$SPACE_CLICK_SCRIPT"
done

sketchybar   --add item       separator left                          \
             --set separator  icon=                                  \
                              icon.font="Hack Nerd Font:Regular:16.0" \
                              background.padding_left=10              \
                              background.padding_right=10             \
                              label.drawing=off                       \
                              associated_display=active               \
                              icon.color=$WHITE

#                              label.font="sketchybar-app-font:Regular:16.0" \

