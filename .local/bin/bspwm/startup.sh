#!/usr/bin/env bash

# Some checks --------------------------------------------------------------------------------------------------------------- #

# If this script is already running, then kill its process and run it again so that the processes are not cloned after bspc wm -r
# --- Soon... --- #

 # Variables --------------------------------------------------------------------------------------------------------------- #

# --- Xidlehook screen saver --- #
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

# --- Wallpapers directory --- # 
walls="$HOME/.wallpapers"


# Needed applications --------------------------------------------------------------------------------------------------------------- #


# --- If these applications are already open, then the script will not start another instance --- #

# --- Sound processing --- #
pgerp -x easyeffects   2> /dev/null || easyeffects  --gapplication-service &

# --- Polkit agent --- #
pregp -x lxpolkit      2> /dev/null || lxpolkit &

# --- Bar --- #
pgerp -x polybar       2> /dev/null || polybar -q -r -c ~/.config/polybar/main.ini &

# --- Notification daemon --- #
pgerp -x dunst         2> /dev/null || dunst &

# --- Shortcuts --- #
pgerp -x sxhkd         2> /dev/null || sxhkd &

# --- Clipboard manager --- #
pgrep -x greenclip     2> /dev/null || greenclip daemon &

# --- Compositor --- # 
pgrep -x picom         2> /dev/null || picom --experimental-backends &


# Start needed scripts --------------------------------------------------------------------------------------------------------------- #


# --- Set wallpapers, which will change every 30 minutes --- #
~/.local/bin/scripts/dynamic-wallapper &


# Other settings --------------------------------------------------------------------------------------------------------------- #


# --- Fix cursor loading animation --- #
xsetroot -cursor_name left_ptr &

# --- Start screen saver --- #
xidlehook --not-when-audio --not-when-fullscreen --timer 300 'betterlockscreen -l' '' &

# --- Render random betterlockscreen image if cached image is not exist --- #
[ ! -d "$HOME/.cache/betterlockscreen" ] && betterlockscreen -q -u $walls --fx none

