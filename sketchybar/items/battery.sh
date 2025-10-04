#!/bin/bash

# Initialization
sketchybar --add item battery right

# Config
sketchybar --set battery update_freq=120 script="$PLUGIN_DIR/battery.sh"
