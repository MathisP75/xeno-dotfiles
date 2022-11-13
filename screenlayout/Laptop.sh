#!/bin/sh
xrandr --output DP-0 --off --output DP-1 --off --output HDMI-0 --off --output DP-2 --off --output DP-3 --off --output eDP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal

dpi140=$HOME/.dpi140

if [ -f "$dpi140" ]; then
    xrdb -override "$dpi140"
fi

i3-msg restart
nitrogen --restore

pkill polybar
~/.config/polybar/xeno/launch_laptop.sh

pkill picom
picom #--experimental-backend

sleep 3

#nitrogen --set-auto /home/mathis_i3/Pictures/Xeno Wallpapers/Final/XenoWallpaperLaptop.png

pkill xborders
~/xborder/xborders --border-width 2 --border-rgba FFF5F5F5 --border-mode center --border-radius 24 --positive-y-offset 3 --negative-y-offset 3