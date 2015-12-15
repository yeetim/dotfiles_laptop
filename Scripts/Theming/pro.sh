#!/bin/bash

rm ~/.config/awesome/freedesktop
rm ~/.config/awesome/rc.lua
rm ~/.config/awesome/themes
rm ~/.config/awesome/vicious
rm ~/.config/awesome/wallpapers
rm ~/.config/awesome/wi.lua
rm ~/.config/awesome/widgets
rm ~/.config/awesome/cyclefocus
rm ~/.config/awesome/lain
rm ~/.config/awesome/patched
rm ~/.config/awesome/fonts
rm ~/.config/awesome/blingbling

ln -s ~/.config/awesome/PROFILES/pro/* ~/.config/awesome/

cp ~/Scripts/Theming/msjche.Xresources ~/.Xresources

xrdb -merge ~/.Xresources

echo 'awesome.restart()' | awesome-client

sleep 5

notify-send "Welcome to MoJos Pro config!"
