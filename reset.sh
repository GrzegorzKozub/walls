#!/usr/bin/env bash
set -eo pipefail -ux

git checkout --orphan temp
git add --all
git commit -m "$(date +%Y%m%d%H%M)"
git branch --move --force temp master
git push --force

git reflog expire --expire=now --all
git gc --prune=now --aggressive
