export ZDOTDIR="$HOME/.config/zsh"
export EDITOR="nvim"
export BROWSER="librewolf"
export PATH="$HOME/.local/bin:$PATH"
export QT_QPA_PLATFORMTHEME=qt6ct
export MANGOHUD_CONFIGFILE=/home/erik/.config/MangoHud/MangoHud.conf
export GTK_THEME="Nordic-darker"
export WLR_NO_HARDWARE_CURSORS=1
export MOZ_ENABLE_WAYLAND=1
export XKB_DEFAULT_LAYOUT=de

xdg-mime default pcmanfm.desktop inode/directory application

xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1


if [[ $(tty) = /dev/tty1 ]]; then
    #dwl -s somebar
    sx ~/.config/X11/xinitrc
fi
