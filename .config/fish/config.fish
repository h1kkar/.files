#   ┌─┐┬┌─┐┬ ┬
#   ├┤ │└─┐├─┤
#   └  ┴└─┘┴ ┴

./.c.sh

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
alias pi="ping 1.1.1.1 -c 1"
alias c="clear"
alias :q="exit"
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
alias g="git"
alias img="feh"
alias flashmnt="sudo mount dev/sdc1 /home/hikkar/.flash/"
alias dot="cd .dot/herbst_dot"

# bin
alias color="cd $HOME/ && ./.c.sh"
alias fet.sh="cd $HOME && ./.fet.sh"
alias bird="cd $HOME && cat .bird"
alias monke="cd $HOME && cat .monke_bild"
alias gameboy="cd $HOME && cat .gameboy"
alias pulse="bash .pulse.sh"
alias calc="./.calc.py"

# pkgs
alias f="ranger"
alias m="musikcube"
alias clock="tty-clock -c -n"
alias ht="htop"
alias cm="cmatrix"
alias ascii="figlet -f Calvin\ S"
alias wood="cbonsai -l"
alias calendar="khal calendar"
alias duck="ddgr"
alias v="nvim"

# conf
alias rc="bash $HOME/.rc"

alias termrc="$EDITOR $CONFIG/alacritty/alacritty.yml"
alias notrc="$EDITOR $CONFIG/dunst/dunstrc"
alias shrc="$EDITOR $CONFIG/fish/config.fish"
alias wmrc="$EDITOR $CONFIG/herbstluftwm/autostart"
alias nvimrc="$EDITOR $CONFIG/nvim/init.vim"
alias comprc="$EDITOR $CONFIG/picom/picom.conf"
alias browrc="$EDITOR $CONFIG/qutebrowser/config.py"
alias markrc="$EDITOR $CONFIG/qutebrowser/quickmarks"
alias rofirc="$EDITOR $CONFIG/rofi/config.rasi"
alias xresrc="$EDITOR $HOME/.Xresources"
alias vimrc="$EDITOR $HOME/.vimrc"
