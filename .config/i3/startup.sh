#!/bin/bash

# [ Setting up dual monitor layout ]
xrandr --output HDMI-1 --primary --mode 1920x1080 --rate 60.00 --output HDMI-0 --mode 1920x1080 --rate 60.00 --rotate right --left-of HDMI-1

# [ Setting capslock as our super key ]
setxkbmap -option "caps:super"

# [ Setting the wallpaper ]
feh --bg-fill ~/.config/wallpapers/NGE/unit-02.jpg ~/.config/wallpapers/NGE/unit-02.jpg

# [ Setting up picom ]
picom -b --experimental-backend &

# [ Hide mouse if it is not in use ]
unclutter -idle 0 &

# [ Polybar launch script ]
killall -q polybar
# Wait until the process have been shut down
while pgrep -u  $UID -x polybar >/dev/null; do sleep 1; done
# Launch bar
polybar main &
# polybar secondary &
