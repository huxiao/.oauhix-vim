#!/bin/env bash

while true; do

  inotifywait -q -r -e close_write ~/vimwk --exclude .git || exit

  cd ~/vimwk || exit
  if [[ -n $(git status -s) ]] ;then
      git add -A .
      git commit -a -m 'autocommit on change'
      git push
  fi

done
