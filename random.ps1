Get-ChildItem (Split-Path -Parent $MyInvocation.MyCommand.Path) -File |
  Where-Object { $_.Extension -match ".*\.(jpg|png|webp)$" } |
  Get-Random |
  Select-Object -ExpandProperty Name
