#!/bin/bash

BAR_ICON_SIZE=15.0
ICON_COLOR=0xff7aa2f7 
ICON_PADDING=12

sketchybar --add item apple left
sketchybar --set apple icon=􀣺 \
                       label.drawing=off \
                       icon.font="SF Pro:Regular:${BAR_ICON_SIZE}" \
                       icon.color=${ICON_COLOR} \
                       icon.padding_right=${ICON_PADDING} \
                       click_script='open -a "System Settings"'

sketchybar --add item apple_sleep left
sketchybar --set apple_sleep icon=􀥦 \
                                 label.drawing=off \
                                 icon.font="SF Pro:Regular:${BAR_ICON_SIZE}" \
                                 icon.color=${ICON_COLOR} \
                                 icon.padding_right=${ICON_PADDING} \
                                 click_script='pmset sleepnow'

sketchybar --add item apple_restart left
sketchybar --set apple_restart icon=􀅈 \
                                   label.drawing=off \
                                   icon.font="SF Pro:Regular:${BAR_ICON_SIZE}" \
                                   icon.color=${ICON_COLOR} \
                                   icon.padding_right=${ICON_PADDING} \
                                   click_script='osascript -e "tell application \"System Events\" to restart"'

sketchybar --add item apple_shutdown left
sketchybar --set apple_shutdown icon=􀆨 \
                                    label.drawing=off \
                                    icon.font="SF Pro:Regular:${BAR_ICON_SIZE}" \
                                    icon.color=${ICON_COLOR} \
                                    icon.padding_right=${ICON_PADDING} \
                                    click_script='osascript -e "tell application \"System Events\" to shut down"'
