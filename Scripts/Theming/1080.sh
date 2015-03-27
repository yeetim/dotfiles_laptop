#!/bin/bash

cp ~/.config/awesome/rc.lua.1080 ~/.config/awesome/rc.lua
cp -r ~/.config/awesome/themes/msjche-1080 ~/.config/awesome/themes/msjche
cp -r ~/.conky/HUD-1080 ~/.conky/HUD
cp ~/Scripts/Theming/1080.Xresources ~/.Xresources
cp ~/Scripts/Theming/default.vimrc ~/.vimrc
echo 'awesome.restart()' | awesome-client

xrandr --output eDP1 --mode 1920x1080_60.00

xrdb -merge ~/.Xresources
pkill urxvt
