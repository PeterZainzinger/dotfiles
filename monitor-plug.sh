#!/bin/sh

# Get out of town if something errors
set -e

HDMI_STATUS=$(xrandr | grep " connected " | awk '{ print$1 }' | grep DP1-2 | wc -l )  

echo $HDMI_STATUS

if [ "1" = "$HDMI_STATUS" ]; then  
    xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 3840x2160 --pos 6000x648 --rotate normal --output DP1 --off --output HDMI2 --off --output DP2-1 --off --output DP2-2 --mode 3840x2160 --pos 2160x648 --rotate normal --output DP2-3 --off --output HDMI1 --off --output DP1-3 --off --output DP1-2 --mode 3840x2160 --pos 0x0 --rotate right --output DP1-1 --off --output DP2 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
else  
    /usr/bin/xrandr --auto
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"    
    exit
fi


