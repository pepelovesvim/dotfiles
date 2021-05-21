#!/bin/sh

xrdb -merge ~/.Xresources
xset m 0 0 

remaps &
unclutter &
udiskie & 
feh --bg-fill --randomize ~/wallpapers/* &
picom --config ~/.picom.conf &
imwheel -b 45 &
dwmStatus ~/.local/src/dwmStatus/dwmStatus.json &

# while :; do 
# 	ssh-agent dwm
# done
autorandr --change work
feh --bg-fill ~/wallpapers/1600383624472.png
exec dwm
