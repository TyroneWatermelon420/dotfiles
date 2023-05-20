#!/bin/dash

setxkbmap -layout de &
feh --bg-scale /home/erik/Drives/HDD/Stuff/Wallpaper/archcraft-wallpapers/archcraft-backgrounds/files/adaptive.png &
numlockx &
slstatus &
#dwmblocks &
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1

#exec dbus-run-session openbox
exec dbus-run-session dwm
