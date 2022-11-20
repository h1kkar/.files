#   ████ ██         ██
#  ░██░ ░░         ░██
# ██████ ██  ██████░██
#░░░██░ ░██ ██░░░░ ░██████
#  ░██  ░██░░█████ ░██░░░██
#  ░██  ░██ ░░░░░██░██  ░██
#  ░██  ░██ ██████ ░██  ░██
#  ░░   ░░ ░░░░░░  ░░   ░░

./.c.sh

### exports
set -U fish_greeting ""

export VISUAL=vim
export EDITOR="$VISUAL"
export BROWSER=qutebrowser
export XDG_CURRENT_DESKTOP=herbstluftw

### aliases

# short
alias ls='ls --color=auto'
alias ll='ls --color=auto -al'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias py="python"
alias pi="ping 1.1.1.1 -c 1"
alias n="nano"
alias c="clear"
alias q="exit"
alias root="sudo -i"
alias untar="tar -zxvf"
alias gc="git clone"
alias pac="yay -S"
alias syu="yay -Syu"
alias rcc="yay -Rcc"
alias his="history"
alias del="rm -rf"
alias xup="xrdb ~/.Xresources"
alias tree="exa --tree -L 2 -a"

# bin
alias color="cd $HOME/ && ./.c.sh"
alias fet.sh="cd $HOME && ./.fet.sh"
alias bird="cd $HOME && ./.bird"
alias monke="cd $HOME && ./.monke_bild"
alias gameboy="cd $HOME && ./.gameboy"
alias pulse="python .pulse.py"

# pkgs
alias f="ranger"
alias m="cmus"
alias clock="tty-clock -c -n"
alias ht="htop"
alias cm="cmatrix"
alias ascii="figlet -f 3d"
alias wood="cbonsai -l"
alias calendar="khal calendar"
alias duck="ddgr"
alias ti="pdd"
alias v="vim"
