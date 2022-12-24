#!/bin/bash
#   ┌─┐┌─┐┌┐┌┌─┐┬┌─┐  ┌┬┐┌─┐┌┐┌┌─┐┌─┐┌─┐┬─┐
#   │  │ ││││├┤ ││ ┬  │││├─┤│││├─┤│ ┬├┤ ├┬┘
#   └─┘└─┘┘└┘└  ┴└─┘  ┴ ┴┴ ┴┘└┘┴ ┴└─┘└─┘┴└─

center()
{ 
IFS=""
while read L
do
printf "%b\n" $(printf "%.$((($(tput cols)-${#L})/2))d" 0 | sed 's/0/ /g')$L
done
}

conf=$HOME/.config
ed=nvim
echo -en "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
echo "a la" | center
echo "d un" | center
echo "fish" | center
echo "h wn" | center
echo "nvim" | center
echo "p ic" | center
echo "q br" | center
echo "qm a" | center
echo "rofi" | center
echo "s pg" | center
echo "uter" | center
echo "v im" | center
echo -en "\n"

read v

case $v in
a | -a | --ala | ala | alacritty)
    $ed $conf/alacritty/alacritty.yml
    ;;

d | -d | --dun | dun | dunst)
    $ed $conf/dunst/dunstrc
    ;;

f | -f | --fi | fi | fish)
    $ed $conf/fish/config.fish
    ;;

h | -h | --he | he | herbstluftwm)
    $ed $conf/herbstluftwm/autostart
    ;;

n | -n | --nvm | nvm | nvim)
    $ed $conf/nvim/init.vim
    ;;
    
p | -p | --pic | pic | picom)
    $ed $conf/picom/picom.conf
    ;;

q | -q | --qb | qb | qutebrowser)
    $ed $conf/qutebrowser/config.py
    ;;

qm | -q1 | --qm | qm | quickmarks)
    $ed $conf/qutebrowser/quickmarks
    ;;

r | -r | --rofi | rofi)
    $ed $HOME/rofi/config.rasi
    ;;

s | -s | --sp | sp | startpage)
    $ed $HOME/.startpage/index.html
    ;;

u | -u | --ut | ut | urxvt)
    $ed $HOME/.Xresources
    ;;

v | -v | --vim | vim)
    $ed $HOME/.vimrc
    ;;

esac

herbstclient close
