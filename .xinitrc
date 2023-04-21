#!/bin/dash

setxkbmap -layout de &
feh --bg-scale /home/erik/Drives/HDD/Stuff/Wallpaper/landscapes/pine-watt-2Hzmz15wGik-unsplash.jpg &
numlockx &
dwmblocks &

exec dbus-run-session dwm
