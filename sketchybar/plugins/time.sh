#!/usr/bin/env sh

sketchybar --set $NAME icon="$(LC_ALL=ca_ES.ISO8859-15 date '+%A, %d %B')" label="$(date '+%H:%M')"

