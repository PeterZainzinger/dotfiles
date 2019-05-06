#!/bin/sh

# Get out of town if something errors
set -e

HDMI_STATUS=$(xrandr | grep " connected " | awk '{ print$1 }' | grep DP-1-2 | wc -l )  

echo $HDMI_STATUS

if [ "1" = "$HDMI_STATUS" ]; then  
    xrandr --output VIRTUAL1 --off --output eDP-1 --primary --mode 3840x2160 --pos 6000x648 --rotate normal --output DP-1 --off --output HDMI-2 --off --output DP-2-1 --off --output DP-2-2 --mode 3840x2160 --pos 2160x648 --rotate normal --output DP-2-3 --off --output HDMI1 --off --output DP-1-3 --off --output DP-1-2 --mode 3840x2160 --pos 0x0 --rotate right --output DP-1-1 --off --output DP-2 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
else  
    /usr/bin/xrandr --auto
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"    
    exit
fi


