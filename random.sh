#!/usr/bin/env bash
set -eo pipefail -ux

find \
  "${BASH_SOURCE%/*}" \
  -maxdepth 1 \
  -type f \
  -regextype posix-extended \
  -regex '.*\.(jpg|png)$' \
  -printf '%f\n' |
  shuf -n 1
