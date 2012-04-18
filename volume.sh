#!/bin/bash

CURRENT_STATE=`amixer -c 1 sget Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]'`

if [[ $CURRENT_STATE == '[on]' ]]; then
    amixer -c 1 sset Master mute
else
    amixer -c 1 sset Master unmute
    amixer -c 1 sset Front unmute
    amixer -c 1 sset Headphone unmute
    amixer -c 1 sset Speaker unmute
fi
