import os
import time

time.sleep(1)
os.system ("pulseaudio --kill")

time.sleep(2)
os.system ("pulseaudio -D")

time.sleep(1)