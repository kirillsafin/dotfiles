#!/usr/bin/env bash

# Script to access cht.sh

languages=$(echo "golang c cpp python rust bash typescript javascript vue" | tr " " "\n")
utils=$(echo "curl find grep sed awk xargs sort uniq cat head" | tr " " "\n")

# via fzf select language or utility
selected=$(printf "%s\n----\n%s" "${languages}" "${utils}" | fzf)

# user input for the cht.sh query
read -p "What to look for in cht.sh: " query

if [[ "${selected}" == "-----" ]]; then
  echo "Nothing selected" && exit 1
elif echo "${languages}" | grep -qs "${selected}"; then
  # cht.sh language query: cht.sh/LANGUAGE/QUERY1+QUERY2+...
  tmux split-window -h bash -c \
    "curl -s \"cht.sh/${selected}/$(echo "${query}" | tr " " "+")\" | less"
else
  # cht.sh utility query: cht.sh/UTIL~QUERY
  tmux split-window -h bash -c \
    "curl -s \"cht.sh/${selected}~${query}\" | less"
fi
