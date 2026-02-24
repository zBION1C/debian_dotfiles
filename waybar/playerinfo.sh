#!/bin/bash

maxlength=35
artist=$(playerctl metadata artist 2>/dev/null)
title=$(playerctl metadata title 2>/dev/null)
player=$(playerctl metadata playerName 2>/dev/null)

if [[ -z "$title" ]]; then
    echo '{"text": "", "tooltip": ""}'
    exit 0
fi

text="$artist - $title"

if [ ${#text} -gt $maxlength ]; then
    text="${text:0:$maxlength-3}..."
fi

printf '{"text": "%s"}\n' \
    "$(printf '%s' "$title" | sed 's/"/\\"/g')"
