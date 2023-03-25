fetch -c $HOME/.config/fetch/conf/cat

### exports
set -U fish_greeting ""

export VISUAL=vim
export EDITOR="$VISUAL"
export CONFIG="$HOME/.config"
export BROWSER=min
export XDG_CURRENT_DESKTOP=hyprland

### aliases

# short
alias ls='ls --color=auto'
alias ll='ls --color=auto -al'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias py='python'
alias :q='exit'
alias gc='git clone'
alias his='history'
alias tree='exa --tree -L 2 -a'
alias psl='pls'
alias ttrs='tetris -p ⣿⣿'
alias plsdir='cd .files/pls'
alias c='clear'

# bin
alias bird='cat $HOME/.bird'
alias monke='cat $HOME/.monke_bild'
alias gameboy='cat $HOME/.gameboy'

# pkgs
alias cm='cmatrix'
alias f='ranger'
