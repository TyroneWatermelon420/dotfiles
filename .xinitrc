#!/bin/dash

setxkbmap -layout de &
feh --bg-scale /home/erik/Drives/HDD/Stuff/Wallpaper/landscapes/pine-watt-2Hzmz15wGik-unsplash.jpg &
numlockx &
dwmblocks &
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1

exec dbus-run-session dwm
