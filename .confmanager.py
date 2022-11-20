#                             ████
#                            ░██░
#  █████   ██████  ███████  ██████
# ██░░░██ ██░░░░██░░██░░░██░░░██░
#░██  ░░ ░██   ░██ ░██  ░██  ░██
#░██   ██░██   ░██ ░██  ░██  ░██
#░░█████ ░░██████  ███  ░██  ░██
# ░░░░░   ░░░░░░  ░░░   ░░   ░░

### import
import os
import time

### space
space = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
print (space)

### editor
editor = "vim"

### print list config
print ("0  alacritty")
print ("1  dunst")
print ("2  fish")
print ("3  herbstluftwm")
print ("4  picom")
print ("5  qutebrowser")
print ("6  rofi")
print ("7  startpage")
print ("8  urxvt")
print ("9  vim")

### input
a = int(input("\nthis is "))

### rules

# alacritty
if a == 0:
    os.system (editor + " $HOME/.config/alacritty/alacritty.yml")

# dinst
elif a == 1:
    os.system (editor + " $HOME/.config/dunst/dunstrc")

# fish
elif a == 2:
    os.system (editor + " $HOME/.config/fish/config.fish")

# herbstluftwm
elif a == 3:
	os.system (editor + " $HOME/.config/herbstluftwm/autostart")

# picom
elif a == 4:
	os.system (editor + " $HOME/.config/picom/picom.conf")

# qutebrowser
elif a == 5:
	print (space, "\n\n0 config\n1 quickmarks\n")
	b2 = int(input("this is "))

	# quteconf
	if b2 == 0:
		os.system (editor + " $HOME/.config/qutebrowser/config.py")

	# quickmarks
	elif b2 == 1:
		os.system (editor + " $HOME/.config/qutebrowser/quickmarks")

# rofi
elif a == 6:
	os.system (editor + " $HOME/.config/rofi/config.rasi")

# startpage
elif a == 7:
	os.system (editor + " $HOME/.startpage/index.html")

# urxvt
elif a == 8:
    os.system (editor + " $HOME/.Xresources")

# vim
elif a == 9:
    os.system (editor + " $HOME/.vimrc")

### exit conf
os.system("herbstclient close")
