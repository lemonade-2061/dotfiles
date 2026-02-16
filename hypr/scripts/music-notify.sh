#!/bin/bash

PREV=""

playerctl -a metadata --format '{{mpris:artUrl}}|||{{artist}}|||{{title}}' --follow | while IFS='|||' read -r art artist title; do
  current="${artist} - ${title}"
  if [ -n "$title" ] && [ "$current" != "$PREV" ]; then
    PREV="$current"
    if [ -n "$art" ]; then
      curl -s -o /tmp/album_art.png "$art"
      notify-send -i /tmp/album_art.png -a "Spotify" "$title" "$artist" -t 4000
    else
      notify-send -a "Spotify" "$title" "$artist" -t 4000
    fi
  fi
done
