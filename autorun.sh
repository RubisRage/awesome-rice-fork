#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

# Automatically set display configuration
run x-on-resize -c ~/.config/scripts/set_screens.sh

run picom
run xss-lock xsecurelock
run variety
run xmodmap ~/.config/X11/Xmodmap
run nm-applet
