#!/usr/bin/python
# ██████
# ░██░░░██  ██████  ███     ██  █████  ██████
# ░██  ░██ ██░░░░██░░██  █ ░██ ██░░░██░░██░░█
# ░██████ ░██   ░██ ░██ ███░██░███████ ░██ ░
# ░██░░░  ░██   ░██ ░████░████░██░░░░  ░██
# ░██     ░░██████  ███░ ░░░██░░██████░███
# ░░       ░░░░░░  ░░░    ░░░  ░░░░░░ ░░░

### import
import os

### space
space = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
print (space)

### list
print ("0 off\n1 reboot\n2 suspend\n3 logout")

### input
a = int(input("\nthis is "))

### rules

# off
if a == 0:
	os.system ("sudo shutdown now")

# reboot
elif a == 1:
	os.system ("sudo reboot")

# sleep
elif a == 2:
	os.system ("systemctl suspend")
	os.system ("xdotool key super+w")

# logout
elif a == 3:
	os.system ("pkill -9 -u hikkar")
