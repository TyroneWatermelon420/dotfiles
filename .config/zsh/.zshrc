autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

eval "$(starship init zsh)"

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# aliases
alias ls="eza --color=always --group-directories-first --icons"
alias ll="eza -hl --color=always --group-directories-first --icons"
alias v=nvim
alias vi=nvim
alias vim=nvim
alias nxmvim="sudo -E nvim /usr/local/bin/nxmhandler"
alias lf="st lf"
alias icon="wrestool -x --output=. -t14"
alias dd="sudo dd status=progress"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# variables
export PATH="$HOME/.local/bin:$PATH"
