#!/bin/bash
# source: https://www.pedaldrivenprogramming.com/2023/09/simple-todo-app-waybar-hyprland/
COUNT=$(wc -l < ~/IMF/todo.todotxt)
TODOS=$(cat ~/todo.txt | head -c -1 - | sed -z 's/\n/\\n/g')
printf '{"text": "%s", "tooltip": "%s"}\n' "$COUNT" "$TODOS"
