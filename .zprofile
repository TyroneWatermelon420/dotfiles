export ZDOTDIR="$HOME/.config/zsh"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"
export COLORTERM="truecolor"
export PATH="$HOME/.local/bin:$PATH"
export GTK_THEME="Adwaita:dark"

xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1

#hallo mein name ist erik

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
  # Could use xinit instead of startx
  #exec xinit -- /usr/bin/X -nolisten tcp vt7
fi
