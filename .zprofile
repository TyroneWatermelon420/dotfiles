export ZDOTDIR="$HOME/.config/zsh"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="librewolf"
export COLORTERM="truecolor"
export PATH="$HOME/.local/bin:$PATH"
export GTK_THEME="Nordic-darker"
export QT_QPA_PLATFORMTHEME="qt5ct"
#export QT_STYLE_OVERRIDE="adwaita"
export MANGOHUD_CONFIGFILE=/home/erik/.config/MangoHud/MangoHud.conf

xdg-mime default pcmanfm.desktop inode/directory application

xinput --set-prop 8 'libinput Accel Profile Enabled' 0, 1

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
fi
