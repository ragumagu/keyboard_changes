#!/bin/bash
# After executing the script, the space bar also acts as a 'Control' modifier key; 
# shift with backspace
# and caps lock is turned into control and escape.

# Using xmodmap
xmodmap /home/user/keyboard_changes/xmodmap_normal

# This line calls xkbcomp to use ~/keyboard_changes/xkbNormal layout.
#xkbcomp /home/user/keyboard_changes/xkbNormal $DISPLAY

#This calls xcape and refreshes it, and gives some arguments.
xcape
killall xcape
xcape -e 'Control_L=Escape;Shift_L=BackSpace;Shift_R=BackSpace;Hyper_L=space' -t 100
echo "Keyboard is now in normal mode."
