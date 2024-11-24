#!/bin/bash

setxkbmap es
xrdb /home/yo/.Xresources
/usr/bin/xmodmap /home/yo/.Xmodmap
xbindkeys
sagent
# configuración fondo
feh --bg-tile /home/yo/.i3/wallpaper.jpg
xsetroot -cursor_name left_ptr

# pantalla DP-1
#xrandr --output HDMI-0 --brightness 0.8 --gamma 1.2:1.2:1.
#xrandr --output DP-1 --brightness 0.6 --gamma 1.2:1.2:1.2
#xrandr --output DP-3 --brightness 0.9 --gamma 1.2:1.2:1.2
xrandr --output DP-1 --brightness 0.9 --gamma 0.8:0.8:0.8

xrandr --output HDMI-0 --primary

autocutsel -f -s PRIMARY
autocutsel -f -s CLIPBOARD
autocutsel -f -s SECONDARY
exec i3
#exec twm
