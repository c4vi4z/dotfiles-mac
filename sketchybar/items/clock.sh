#!/bin/bash

# Initialization
sketchybar --add item clock right

# Config
sketchybar --set clock update_freq=1 script="$PLUGIN_DIR/clock.sh"
