#!/bin/sh

# stuff and things
set -e

if tmux has-session -t tilde 2> /dev/null; then
    tmux attach -t tilde
    exit
fi

# set up a new session

tmux new-session -d -s tilde -n main

# 1. Main window: vim, lf, git status
tmux send-keys -t tilde:main "nvim -c Files" Enter
tmux split-window -t tilde:main -h -c "$PWD"
tmux send-keys -t tilde:main.right "git pull" Enter
tmux send-keys -t tilde:main.right "git status" Enter

# Start it up!
tmux attach -t tilde:main.left
