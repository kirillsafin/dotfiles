#!/bin/env bash

SESSION_NAME="Main Work"

# Start a new tmux session (detached)
tmux new-session -d -s "${SESSION_NAME}"

tmux rename-window -t "${SESSION_NAME}":1 "dotfiles"
tmux send-keys -t "${SESSION_NAME}":1 "cd ~/.dotfiles && nvim" C-m

tmux new-window -t "${SESSION_NAME}" -n "Nvim Weekly"
tmux send-keys -t "${SESSION_NAME}":2 "cd \"/home/kirill/Desktop/WEEKLY VIM LEARNING\" && nvim ." C-m

tmux new-window -t "${SESSION_NAME}" -n "CheatSheets"
tmux send-keys -t "${SESSION_NAME}":3 "cd /media/kirill/WindowsD/vaults/CheatSheets && nvim" C-m

tmux new-window -t "${SESSION_NAME}" -n "KnowledgeBase"
tmux send-keys -t "${SESSION_NAME}":4 "cd /media/kirill/WindowsD/vaults/KnowledgeBase && nvim" C-m

tmux new-window -t "${SESSION_NAME}" -n "EDA Code"
tmux send-keys -t "${SESSION_NAME}":5 "cd ~/Desktop/EDA/Code/Training/Console-Training && nvim" C-m

tmux new-window -t "${SESSION_NAME}" -n "EDA Files"
tmux send-keys -t "${SESSION_NAME}":6 "cd ~/Desktop/EDA && yazi" C-m

tmux new-window -t "${SESSION_NAME}" -n "Shell Zsh"

tmux new-window -t "${SESSION_NAME}" -n "Shell Nu"
tmux send-keys -t "${SESSION_NAME}":8 "cd /home/kirill && nu" C-m

tmux attach-session -t "${SESSION_NAME}"
