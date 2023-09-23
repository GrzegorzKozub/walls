git pull

if (git status --porcelain) {
  git add .
  git commit -m "$(Get-Date -Format 'yyyyMMddHHmm')"
  git push
}
