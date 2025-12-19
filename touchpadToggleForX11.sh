#!/bin/bash

# This is a touchpad toggle script for Debian and Fedora based distros if you are using X11.
# This touchpad toggle script can be used with GNOME's settings app for to execute the command with a shortcut.
# This code is not fully written by me. I found the code on the internet (I don't remember when or where).
# I might have changed the code or just took this part of the code. I don't remember exacty.

# IMPORTANT NOTE: If you are using Wayland, DON'T USE THIS! Instead; if you're using KDE or Cinnamon, use their
# touchpad toggle. If you're using GNOME, install "Touchpad On Off" extension from the extension manager.
# (That extension is not mine. I recommend it because I have used it.)

# But if you are using X11, follow these steps:
#   1. install xinput by typing "sudo apt install xinput" or "sudo dnf install xinput".
#   2. restart your pc (just in case).
#   3. type "xinput list" at the terminal and see your touchpad id and write your touchpad id instead of 14.
#   My touchpad id is 14 according to xinput (look at yours even if you changed distros).

enabled=$(xinput --list-props 14 | grep "Device Enabled" | awk '{print $NF}')

if [[ "$enabled" == "1" ]]; then
    xinput --disable 14
else
    xinput --enable 14
fi
