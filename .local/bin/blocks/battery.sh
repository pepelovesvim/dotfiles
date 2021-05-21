#!/bin/sh
ICON="\uf5df"
read -r capacity </sys/class/power_supply/BAT0/capacity
printf "Battery: $capacity% \t"
