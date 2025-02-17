#!/usr/bin/env bash

#
#  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
#  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
#  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
#  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
#  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
#  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
#
#  File: tmux_switch.sh
#  Description: switching between tmux sessions made easily
#  Author: Josip Keresman

# Check if tmux is running, grep PID for tmux
is_tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $is_tmux_running ]]; then
    echo "tmux isn't running"
    exit 1
fi

# List tmux session names and switch to selected tmux session
tmux ls | awk -F ':' '{print $1}' | fzf | xargs -I {} tmux switch -t {}
