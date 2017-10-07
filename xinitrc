
xrdb ~/.Xresources &
compton -G --config ~/.config/compton/compton.conf --no-fading-openclose &
setxkbmap -layout us,gr -option grp:alt_shift_toggle -option ctrl:nocaps -option shift:both_capslock
xmodmap ~/.Xmodmapc &
udiskie -N -s &
dunst &
mpd &
xcape -t 170 &

exec i3
