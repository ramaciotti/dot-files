#!/bin/env zsh

xrdb -I$HOME ~/.Xresources
setxkbmap br

which VBoxClient
if [ $? -eq 0 ]; then
  VBoxClient --clipboard
fi

#exec i3
exec awesome

