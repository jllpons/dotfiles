#!/usr/bin/env sh

SPACE_ICONS=("􀑌" "􀑌" "􀑌" "􀑌" "􀑌" "􀑌" "􀑌" "􀑌" "􀑌" "􀑌")
#SPACE_CLICK_SCRIPT="yabai -m space --focus \$SID 2>/dev/null"

sid=0
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space      space.$sid left                               \
             --set space.$sid associated_space=$sid                         \
                              icon=${SPACE_ICONS[i]}                        \
                              icon.font="$FONT:Regular:14.0"\
                              icon.padding_left=15                   \
                              icon.padding_right=15                       \
                              label.padding_left=0                      \
                              label.padding_right=0                     \
                              icon.corner_radius=0                        \
                              icon.highlight_color=$RED                     \
                              background.padding_left=4                   \
                              background.padding_right=-15                  \
                              background.color=$BLACK1              \
                              #click_script="$SPACE_CLICK_SCRIPT"
done

# sketchybar   --add item       separator left                          \
#              --set separator  icon=                                  \
#                               icon.font="Hack Nerd Font:Regular:14.0" \
#                               background.padding_left=10              \
#                               background.padding_right=10             \
#                               label.drawing=off                       \
#                               associated_display=active               \
#                               icon.color=$WHITE1

#                              label.font="sketchybar-app-font:Regular:16.0" \
# #!/usr/bin/env sh
# 
# SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")
# 
# sid=0
# for i in "${!SPACE_ICONS[@]}"
# do
#   sid=$(($i+1))
#   sketchybar --add space      space.$sid left                               \
#              --set space.$sid associated_space=$sid                         \
#                               icon=${SPACE_ICONS[i]}                        \
#                               icon.padding_left=22                          \
#                               icon.padding_right=22                         \
#                               label.padding_right=33                        \
#                               icon.highlight_color=$RED                     \
#                               background.padding_left=-8                    \
#                               background.padding_right=-8                   \
#                               background.height=26                          \
#                               background.corner_radius=9                    \
#                               background.color=$SPACE_BACKGROUND            \
#                               background.drawing=on                         \
#                               label.font="sketchybar-app-font:Regular:16.0" \
#                               label.background.height=26                    \
#                               label.background.drawing=on                   \
#                               label.background.color=$OPEN_APPS_BACKGROUND  \
#                               label.background.corner_radius=9              \
#                               label.drawing=off                             \
#                               script=""                                     \
#                               mach_helper="$HELPER"                         \
#                               click_script="$SPACE_CLICK_SCRIPT"
# done
# 
# sketchybar   --add item       separator left                          \
#              --set separator  icon=                                  \
#                               icon.font="Hack Nerd Font:Regular:16.0" \
#                               background.padding_left=26              \
#                               background.padding_right=15             \
#                               label.drawing=off                       \
#                               associated_display=active               \
#                               icon.color=$WHITE
