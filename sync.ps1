git pull

if (git status --porcelain) {
  git add .
  git commit -m "$(Get-Date -Format 'yyyyMMddHHmm')"
  git push
}

git reflog expire --expire=now --all
git gc --prune=now --aggressive
