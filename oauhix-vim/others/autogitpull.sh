#!/bin/env bash

while true; do

  inotifywait -q -r -e open ~/vimwk --exclude .git || exit
  cd ~/vimwk || exit
  git pull
  sleep 300

done
