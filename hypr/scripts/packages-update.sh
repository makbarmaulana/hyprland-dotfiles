#!/usr/bin/env bash

# Requires pacman-contrib trizen

threshold_green=1
threshold_yellow=25
threshold_red=100

# Calculate available updates for pacman and AUR (with trizen)
updates_arch=$(checkupdates 2> /dev/null | wc -l)
updates_aur=$(trizen -Su --aur --quiet | wc -l)
updates=$((updates_arch + updates_aur))

# Define CSS class based on the number of updates
css_class="green"
if (( updates > threshold_yellow )); then
    css_class="yellow"
fi
if (( updates > threshold_red )); then
    css_class="red"
fi

# Print the result in JSON format
if (( updates > threshold_green )); then
    printf '{"text": "%s", "alt": "%s", "tooltip": "%s Updates", "class": "%s"}' "$updates" "$updates" "$updates" "$css_class"
else
    printf '{"text": "0", "alt": "0", "tooltip": "0 Updates"}'
fi

