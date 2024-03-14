#!/bin/bash

# command: git-monitor <git-directory>

current_directory="$(pwd)"

run_git_status() {
    cd "$1"
    clear
    git status
}

monitoring_dir="$1"

if [ "$monitoring_dir" = "." ]; then
    monitoring_dir="$current_directory"
fi

if [ ! -d "$monitoring_dir/.git" ]; then
    echo "This directory is not initialized as a git repository." >&2
    exit 1
fi

run_git_status "$monitoring_dir"

while true; do
    change=$(inotifywait -q -e modify,move,create,delete,attrib "$monitoring_dir")
    
    run_git_status "$monitoring_dir"
done
