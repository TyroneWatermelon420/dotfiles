autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

eval "$(starship init zsh)"

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.config/zsh/zsh_history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/site-functions/zsh-autosuggestions.zsh

# aliases
alias ls="eza --color=always --group-directories-first --icons=auto"
alias ll="eza -hl --color=always --group-directories-first --icons=auto"
alias v=nvim
alias vi=nvim
alias vim=nvim
alias suvim="sudo -E nvim"
alias nxmvim="nvim ~/.local/bin/nxmhandler"
alias lf="st lf"
alias icon="wrestool -x --output=. -t14"
alias dd="sudo dd status=progress"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias ..="cd .."
alias ....="cd ../.."
alias poweroff="loginctl poweroff"
alias reboot="loginctl reboot"
alias nouveau="doas rmmod nvidia_drm nvidia_modeset nvidia_uvm nvidia && doas modprobe nouveau"

# variables
export PATH="$HOME/.local/bin:$PATH"

# syntax color change
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue

# colored man page
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
