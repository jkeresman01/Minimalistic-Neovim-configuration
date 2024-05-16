#!/usr/bin/env bash

# Check if tmux is running, grep PID for tmux
is_tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $is_tmux_running ]]; then
    echo "tmux isn't running"
    exit 1
fi

# Get the id from tmux session name and swith to that session
tmux ls | awk -F ':' '{print $1}' | fzf | xargs -I {} tmux switch -t {}
