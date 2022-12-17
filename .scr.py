#   ┌─┐┌─┐┬─┐┌─┐┌─┐┌┐┌
#   └─┐│  ├┬┘├┤ ├┤ │││
#   └─┘└─┘┴└─└─┘└─┘┘└┘

import os
import time

os.system ("scrot $HOME/img/scr.png")
time.sleep(0.5)
os.system ("notify-send Screenshot taken!")
