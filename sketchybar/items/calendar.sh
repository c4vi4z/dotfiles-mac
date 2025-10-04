#!/bin/bash

# Initialization
sketchybar --add item calendar right

# Config
sketchybar --set calendar update_freq=60 script="$PLUGIN_DIR/calendar.sh"
