# TouchpadToggleForX11
This is a touchpad toggle script for Debian and Fedora based distros if you are using X11.
This touchpad toggle script can be used with GNOME's settings app for to execute the command with a shortcut (and I used it like that).

IMPORTANT NOTE! : If you are using Wayland, DON'T USE THIS! Instead; if you're using KDE or Cinnamon, use their touchpad toggle. If you're using GNOME, install "Touchpad On Off" extension from the extension manager.

But, if you are using X11 follow these steps :
1. install xinput by typing "sudo apt install xinput" or "sudo dnf install xinput".
2. restart your pc (just in case).
3. type "xinput list" at the terminal and see your touchpad id and write your touchpad id instead of 14.
My touchpad id is 14 according to xinput (look at yours even if you changed distros).
