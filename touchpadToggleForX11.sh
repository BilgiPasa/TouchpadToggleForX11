#!/bin/bash

# This is a touchpad toggle script for X11 that uses xinput.

# This code is not written by me. I found the code on the internet (I don't remember when or where).
# I might have changed the code that I found or I might just took this part of the code that I found.
# I don't remember exacty.

# IMPORTANT NOTE: If you are using Wayland, DON'T USE THIS! Instead; if you're using KDE or Cinnamon, use their
# touchpad toggle. If you're using GNOME, install "Touchpad On Off" extension from the extension manager.
# (That extension is not mine. I recommend it because I have used it.)

# To use this script, follow these steps:
#   1. Install xinput with "sudo apt install xinput" or "sudo dnf install xinput" or with another command.
#   2. Restart your pc (just in case).
#   3. Type "xinput list" at the terminal and see your touchpad ID and write your touchpad ID instead of 14.
#   My touchpad ID was 14 according to xinput. Because of that, I wrote 14.

enabled=$(xinput --list-props 14 | grep "Device Enabled" | awk '{print $NF}')

if [[ "$enabled" == "1" ]]; then
    xinput --disable 14
else
    xinput --enable 14
fi
