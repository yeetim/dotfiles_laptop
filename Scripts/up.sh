#!/bin/bash

pkill insync &
pkill hp-systray &
pkill megasync & 
pkill dropbox &

~/Scripts/start_HUD.sh &
#/usr/bin/nm-applet &
/usr/bin/insync start &
/usr/bin/hp-systray &
/usr/bin/megasync &
/opt/dropbox/dropbox &
