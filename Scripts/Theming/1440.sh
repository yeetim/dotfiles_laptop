#!/bin/bash

cp ~/.config/awesome/rc.lua.1440 ~/.config/awesome/rc.lua
cp -r ~/.config/awesome/themes/msjche-1440 ~/.config/awesome/themes/msjche
cp -r ~/.conky/HUD-1440 ~/.conky/HUD
cp ~/Scripts/Theming/1440.Xresources ~/.Xresources
cp ~/Scripts/Theming/default.vimrc ~/.vimrc
echo 'awesome.restart()' | awesome-client

xrandr --output eDP1 --mode 2560x1440_60.00

xrdb -merge ~/.Xresources
pkill urxvt
