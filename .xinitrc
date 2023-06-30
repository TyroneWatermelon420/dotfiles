#!/bin/dash

setxkbmap -layout de &
feh --bg-scale /home/erik/Drives/HDD/Stuff/Wallpaper/ac-valhalla-norse-church.jpg &
numlockx &
slstatus &
picom &
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1
xrdb ~/.Xresources

exec dbus-run-session dwm
