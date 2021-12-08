#!/bin/sh
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
mkdir -p "$HOME"/.local/share/keyrings

xrdb -merge ~/.Xresources
xset m 0 0

remaps &
unclutter &
udiskie &
feh --bg-fill --randomize ~/wallpapers/* &
picom --config ~/.picom.conf &
imwheel -b 45 &
dwmStatus ~/.local/src/dwmStatus/dwmStatus.json &

# while :; do ssh-agent dwm
# done
autorandr --change work
feh --bg-fill ~/wallpapers/1600383624472.png
exec dwm
