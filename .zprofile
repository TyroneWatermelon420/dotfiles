export ZDOTDIR="$HOME/.config/zsh"
export EDITOR="nvim"
export BROWSER="librewolf"
export PATH="/etc/eselect/wine/bin:$HOME/.local/bin:$PATH"
#export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt6ct
export MANGOHUD_CONFIGFILE=/home/erik/.config/MangoHud/MangoHud.conf
export GTK_THEME="Nordic-darker"
export WLR_NO_HARDWARE_CURSORS=1
export MOZ_ENABLE_WAYLAND=1
export XKB_DEFAULT_LAYOUT=de
#export MESA_LOADER_DRIVER_OVERRIDE=zink

# https://qiwi.gg/file/bYeb1782-H

xdg-mime default pcmanfm.desktop inode/directory application

if [[ $(tty) = /dev/tty1 ]]; then
    doas rmmod nvidia_drm nvidia_modeset nvidia && doas modprobe nouveau
    dbus-run-session dwl
fi

if [[ $(tty) = /dev/tty2 ]]; then
    dbus-run-session dwl
fi
