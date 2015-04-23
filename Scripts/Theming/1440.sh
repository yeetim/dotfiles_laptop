#!/bin/bash

xrandr --newmode "2560x1440_60.00"  173.00  2560 2048 2248 2576  1440 1083 1088 1120 -hsync +vsync
xrandr --addmode eDP1 2560x1440_60.00
xrandr --output eDP1 --mode 2560x1440_60.00

xrdb -merge ~/.Xresources
pkill urxvt
