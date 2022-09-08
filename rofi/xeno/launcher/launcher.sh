#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# style_1     style_2     style_3     style_4     style_5     style_6
# style_7     style_8     style_9     style_10    style_11    style_12

theme1="launcher"
theme2="launcherLaptop"
currentConfig=$(autorandr --detected)
dir="$HOME/.config/rofi/xeno/launcher"

# comment these lines to disable random style
#themes=($(ls -p --hide="launcher.sh" --hide="colors.rasi" $dir))
#theme="${themes[$(( $RANDOM % 12 ))]}"

if [ $currentConfig == "laptop" ]
then
rofi -no-lazy-grab -show drun -modi drun -sort true -sorting-method fzf -theme $dir/"$theme2"
else
rofi -no-lazy-grab -show drun -modi drun -sort true -sorting-method fzf -theme $dir/"$theme1"

fi

# rofi -no-lazy-grab -show drun -modi drun -sort true -sorting-method fzf -theme $dir/"$theme"
