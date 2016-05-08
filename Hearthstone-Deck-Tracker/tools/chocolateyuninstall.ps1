$ErrorActionPreference = 'Stop';

$packageName = 'Hearthstone Deck Tracker'
$zipName     = 'Hearthstone.Deck.Tracker-v0.14.7.zip'

$desktop     = [Environment]::GetFolderPath("Desktop")
$shortcut    = Join-Path $desktop "$packageName.lnk"

Uninstall-ChocolateyZipPackage $packageName $zipName
Remove-Item $shortcut
