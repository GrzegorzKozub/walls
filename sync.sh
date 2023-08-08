#!/usr/bin/env bash

set -e

git pull

if [[ $(git status --porcelain) ]]; then
  git add .
  git commit -m "$(date +%Y%m%d%H%M)"
  git push
fi
