#!/bin/env zsh

xrdb -I$HOME ~/.Xresources
setxkbmap br
xsetroot -cursor_name left_ptr

which VBoxClient
if [[ $? -eq 0 ]]; then
  VBoxClient --clipboard
fi

if [[ $(hostname) == "vektor" ]]; then
  xrandr --output VGA-1 --mode 2560x1440
else
  xrandr --output VGA-1 --mode 1920x1080
fi

#exec awesome
#exec openbox-session
exec xmonad
