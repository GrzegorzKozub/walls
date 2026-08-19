#!/usr/bin/env bash
set -eo pipefail -ux

git pull

if [[ $(git status --porcelain) ]]; then
  git add .
  git commit -m "$(date +%Y%m%d%H%M)"
  git push
fi

git reflog expire --expire=now --all
git gc --prune=now --aggressive
