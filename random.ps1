Get-ChildItem -Path (Split-Path -Parent $MyInvocation.MyCommand.Path) -File |
  Where-Object { $_.Extension -match ".*\.(jpg|png)$" } |
  Get-Random |
  Select-Object -ExpandProperty Name
