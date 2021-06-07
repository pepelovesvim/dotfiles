#!/bin/zsh

# python wanrings
export PYTHONWARNINGS="ignore"

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

# export ~/.local/bin to PATH
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# ~/ clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# show hidden files with fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_COMPLETION_TRIGGER='**'
export FZF_COMPLETION_OPTS='--border --info=inline'

# Path to your oh-my-zsh installation.
export ZSH="/home/jeff/.oh-my-zsh"

# GTK dark theme
export GTK_THEME=Adwaita:dark

# atom read path
export ATOM_HOME=$HOME/.config/atom

# start X11 on startup
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
