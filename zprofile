[[ -z $DISPLAY && $XDG_VTNR -eq 1 && $(hostname) -eq "erlangen" ]] && exec startx
