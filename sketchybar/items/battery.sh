sketchybar --add item battery right                      \
           --set battery script="$PLUGIN_DIR/battery.sh" \
                         update_freq=60                  \
                         background.color=$BLACK1  \
           --subscribe battery system_woke
