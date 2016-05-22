$ErrorActionPreference = 'Stop';

$packageName = 'Hearthstone Deck Tracker'

$desktop     = [Environment]::GetFolderPath('Desktop')
$shortcut    = Join-Path $desktop "$packageName.lnk"

Remove-Item $shortcut
