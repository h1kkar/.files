# ██                        ██
# ░██                       ░██
# ░██       ██████    ██████░██      ██████  █████
# ░██████  ░░░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
# ░██░░░██  ███████ ░░█████ ░██░░░██ ░██ ░ ░██  ░░
# ░██  ░██ ██░░░░██  ░░░░░██░██  ░██ ░██   ░██   ██
# ░██████ ░░████████ ██████ ░██  ░██░███   ░░█████
# ░░░░░    ░░░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░

[[ $- != *i* ]] && return

clear
cd $HOME && ./.c.sh

### prompt
PS1='\033[1;32m\w\033[0;0m '

### exports
export VISUAL=nano
export EDITOR="$VISUAL"
export BROWSER=qutebrowser
export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export XDG_CURRENT_DESKTOP=herbstluftwm

### history
shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s expand_aliases dotglob gnu_errfmt histreedit nocasematch autocd globstar checkwinsize cdspell dirspell

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set colored-stats on'

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
alias pkg="yay -Qq"
alias his="history"
alias del="rm -rf"
alias xup="xrdb ~/.Xresources"
alias tree="exa --tree -L 2 -a"
alias g="git"
alias img="feh"

# bin
alias color="cd $HOME/ && ./.c.sh"
alias fet.sh="cd $HOME && ./.fet.sh"
alias bird="cd $HOME && cat .bird"
alias monke="cd $HOME && cat.monke_bild"
alias gameboy="cd $HOME && cat .gameboy"
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
alias ti="pdd"
alias v="nvim"
