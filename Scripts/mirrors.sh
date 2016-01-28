#!/bin/bash

cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup &
/usr/bin/reflector -c 'United States' -f 12 -l 12 --verbose --save /etc/pacman.d/mirrorlist
