#!/bin/dash

setxkbmap -layout de &
feh --bg-scale /home/erik/Drives/HDD/Stuff/Wallpaper/archcraft-wallpapers/archcraft-backgrounds-nature/files/nature-13.jpg &
numlockx &
slstatus &
picom &
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1

exec dbus-run-session dwm
