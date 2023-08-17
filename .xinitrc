#!/bin/dash

setxkbmap -layout de &
nitrogen --restore
numlockx &
slstatus &
picom &
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1
xrdb ~/.Xresources

nm-applet &

pipewire &
pipewire-pulse &
pipewire-jack &
pipewire-alsa &
wireplumber &

eww daemon &

exec dbus-run-session dwm
