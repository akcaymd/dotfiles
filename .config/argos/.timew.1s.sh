#!/usr/bin/env bash
tw="$(timew)"
if [ "$tw" == "There is no active time tracking." ]; then
    echo "00:00"
else
    echo "$tw"
fi
echo "---"
echo "stop | bash='/home/furkan/codes/argos-timew/.venv/bin/python /home/furkan/codes/argos-timew/app.py stop' terminal=false"
echo "---"
echo "gaming | bash='/home/furkan/codes/argos-timew/.venv/bin/python /home/furkan/codes/argos-timew/app.py gaming' terminal=false"
echo "programming | bash='/home/furkan/codes/argos-timew/.venv/bin/python /home/furkan/codes/argos-timew/app.py programming' terminal=false"
echo "---"
echo "$(timew day)"
