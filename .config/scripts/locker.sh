#!/usr/bin/sh

pgrep -x i3lock || i3lock -i ~/.config/blackarch_logo_center_1920x1080.png -e -f -c "#000000"
