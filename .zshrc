#                ██
#               ░██
# ██████  ██████░██      ██████  █████
#░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#   ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#  ██    ░░░░░██░██  ░██ ░██   ░██   ██
# ██████ ██████ ░██  ░██░███   ░░█████
#░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░
export ZSH="$HOME/.oh-my-zsh"
#ZSH_THEME="robbyrussell"
export PROMPT='%F{red}%B*%b%f '

plugins=(git)

#eval $(thefuck --alias)
source $ZSH/oh-my-zsh.sh

cd $HOME && ./.c.sh

### exports
export VISUAL=vim
export EDITOR="$VISUAL"
export BROWSER=qutebrowser
#export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export XDG_CURRENT_DESKTOP=herbstluftwm

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
alias _="cd"
alias del="rm -rf"

# bin
alias color="cd $HOME/ && ./.c.sh"
alias fet.sh="cd $HOME && ./.fet.sh"
alias bird="cd $HOME && ./.bird"
alias monke="cd $HOME && ./.monke_bild"
alias gameboy="cd $HOME && ./.gameboy"
alias pulse="python .pulse.py"

# pkgs

alias f="ranger"
alias weather="wttr Novosibirsk"
alias m="cmus"
alias clock="tty-clock -c -n"
alias ht="htop"
alias cm="cmatrix"
alias ascii="figlet"
alias wood="cbonsai -l"
alias calendar="khal calendar"
alias duck="ddgr"
alias time="pdd"
alias vam="vim -R .art.txt"
