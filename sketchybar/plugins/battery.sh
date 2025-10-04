#!/bin/bash

PREV=""

while true; do
  PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
  CHARGING=$(pmset -g batt | grep 'AC Power')

  # Skip if no battery info
  [ -z "$PERCENTAGE" ] && sleep 5 && continue

  # Determine icon based on percentage
  if [ "$PERCENTAGE" -ge 90 ]; then
    ICON="􀛨"
  elif [ "$PERCENTAGE" -ge 75 ]; then
    ICON="􀺸"
  elif [ "$PERCENTAGE" -ge 50 ]; then
    ICON="􀺶"
  elif [ "$PERCENTAGE" -ge 25 ]; then
    ICON="􀛩"
  elif [ "$PERCENTAGE" -ge 0 ]; then
    ICON="􀛪"
  else
    ICON="􀛨"
  fi

  # Show charging icon if charging
  [ -n "$CHARGING" ] && ICON="􀢋"

  STATUS="$ICON $PERCENTAGE"

  # Only update SketchyBar if status changed
  if [ "$STATUS" != "$PREV" ]; then
    sketchybar --set $NAME \
      icon="$ICON" \
      label="$PERCENTAGE%" \
      icon.font="SF Pro" \
      icon.font.size=16  \
      label.font.size=14
    PREV="$STATUS"
  fi

  sleep 5
done
