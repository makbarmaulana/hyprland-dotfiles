#!/usr/bin/env bash

CONFIG_DIR="$HOME/.config/waybar"

restart_waybar() {
    killall waybar
    waybar &
}

trap 'killall waybar' EXIT

waybar &

while inotifywait -qq -e modify -r "$CONFIG_DIR"; do
    restart_waybar
done

