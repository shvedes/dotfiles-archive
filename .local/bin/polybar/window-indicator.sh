#!/usr/bin/env bash
WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "4194368" ]; then

  echo " |  Desktop"

fi

WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')

echo " | $WM_CLASS"
