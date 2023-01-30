#      ___              __
#    /'___\ __         /\ \
#   /\ \__//\_\    ____\ \ \___
#   \ \ ,__\/\ \  /',__\\ \  _ `\
#    \ \ \_/\ \ \/\__, `\\ \ \ \ \
#     \ \_\  \ \_\/\____/ \ \_\ \_\
#      \/_/   \/_/\/___/   \/_/\/_/

bash $HOME/.c.sh

### exports
set -U fish_greeting ""

export VISUAL=nvim
export EDITOR="$VISUAL"
export CONFIG="$HOME/.config"
export BROWSER=qutebrowser
export XDG_CURRENT_DESKTOP=herbstluftwm

### aliases

# short
alias ls='ls --color=auto'
alias ll='ls --color=auto -al'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias py="python"
alias :q="exit"
alias root="sudo -i"
alias gc="git clone"
alias his="history"
alias tree="exa --tree -L 2 -a"
alias g="git"
alias img="feh"

# bin
alias color="bash $HOME/.c.sh"
alias bird="cat $HOME/.bird"
alias monke="cat $HOME/.monke_bild"
alias gameboy="cat $HOME/.gameboy"
alias pulse="python $HOME/.pulse.py"
alias calc="python $HOME/.calc.py"

# pkgs
alias m="musikcube"
alias clock="tty-clock -c -n"
alias ht="htop"
alias cm="cmatrix"
alias ascii="figlet -f Calvin\ S"
alias wood="cbonsai -l"
alias calendar="khal calendar"
alias duck="ddgr"
