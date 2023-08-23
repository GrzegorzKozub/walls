#!/usr/bin/env bash

set -e

find \
    `dirname $0` \
    -maxdepth 1 \
    -type f \
    -regextype posix-extended \
    -regex '.*\.(jpg|png)$' \
    -printf '%f\n' |
  shuf -n 1
