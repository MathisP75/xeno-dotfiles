#!/bin/sh
xrandr --output DP-0 --off --output DP-1 --off --output HDMI-0 --off --output DP-2 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output DP-3 --off --output eDP-1-1 --off

dpi160=$HOME/.dpi160

if [ -f "$dpi160" ]; then
    xrdb -override "$dpi160"
fi

i3-msg restart
nitrogen --restore

pkill polybar
~/.config/polybar/xeno/launch_desktop.sh

pkill picom
picom #--experimental-backend

sleep 3

#nitrogen --set-auto /home/mathis_i3/Pictures/Xeno Wallpapers/Final/XenoWallpaperDesktop.png

killall xborders
~/xborder/xborders --border-radius 23 --border-width 3 --border-red 255 --border-green 255 --border-blue 255 --border-mode center