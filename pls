#!/bin/bash

help='
usage: pls [command]

available commands:
    dunst               open config dunst
    fish                open config fish
    wm                  open config herbstluftwm
    nvim                open config nvim
    picom               open config picom
    qute                open config qutebrowser
    term                open config alacritty
    marks               open config qutemarks
    xres                open xresources
    vim                 open config vim
  
    ping                ping output
    xup                 xresources config reload
    flashmnt            mount my flash drive
    push                push github repo

    dot                 go to dotfiles folder
    home                go to home folder
    
    pulse               restart pulseaudio
    wal                 change wal
    
    pkg                 install package
    del                 delete package
    upd                 update system
        untar               extract tar-archive
    rem                 delete file
    
    xmod                chmod +x
    
    off                 poweroff
    reboot              reboot
    suspend             suspend
    '

ed="nvim"
conf="$HOME/.config"
case $1 in

help)
    echo "$help"
    ;;

dunst)
    $ed $conf/dunst/dunstrc
    ;;

fish)
    $ed $conf/fish/config.fish
    ;;

wm)
    $ed $conf/herbstluftwm/autostart
    ;;

nvim)
    $ed $conf/nvim/init.vim
    ;;

picom)
    $ed $conf/picom/picom.conf
    ;;

qute)
    $ed $conf/qutebrowser/config.py
    ;;

term)
    $ed $conf/alacritty/alacritty.yml
    ;;

marks)
    $ed $conf/qutebrowser/quickmarks
    ;;

xres)
    $ed $HOME/.Xresources
    ;;

vim)
    $ed $HOME/.vimrc
    ;;

ping)
    ping ya.ru -c 1
    ;;

xup)
    xrdb -merge $HOME/.Xresources
    ;;

flashmnt)
    sudo mount dev/sdc1 /home/hikkar/.flash/
    ;;

push)
    git add -A
    echo "commit:"
    read m
    git commit -m "$m"
    git push origin master
    ;;

dot)
    cd $HOME/.dot/herbst_dot
    ;;

home)
    cd $HOME
    ;;

pulse)
    python $HOME/.pulse.py
    ;;

wal)
    ls $HOME/.wp
    echo "name:"
    read wal
    feh --bg-fill $HOME/.wp/${wal}.jpg
    ;;

pkg)
    yay -S $2
    ;;

del)
    yay -Rcc $2
    ;;

upd)
    yay -Syyu
    ;;

untar)
    tar -zxvf $2
    ;;

rem)
    rm -rf $2
    ;;

xmod)
    chmod +x $2
    ;;

off)
    poweroff
    ;;

reboot)
    reboot
    ;;

suspend)
    systemctl suspend
    ;;

esac
