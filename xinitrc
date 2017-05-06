#!/bin/env zsh

xrdb -I$HOME ~/.Xresources
setxkbmap br

which VBoxClient
if [[ $? -eq 0 ]]; then
  VBoxClient --clipboard
fi

if [[ $(hostname) == "skellige" ]]; then
  xrandr --output VGA-1 --mode 2560x1440
else
  xrandr --output VGA-1 --mode 1920x1080
fi

exec awesome

