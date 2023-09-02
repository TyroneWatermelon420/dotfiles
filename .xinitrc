#!/bin/dash

setxkbmap -layout de &
nitrogen --restore
numlockx &
slstatus &
picom &
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1
xrdb ~/.Xresources
/usr/lib/ts-polkitagent &

nm-applet &

pipewire &
pipewire-pulse &
wireplumber &

eww daemon &

exec dbus-run-session dwm
