#!/bin/env zsh

xrdb -I$HOME ~/.Xresources
setxkbmap br
exec i3

