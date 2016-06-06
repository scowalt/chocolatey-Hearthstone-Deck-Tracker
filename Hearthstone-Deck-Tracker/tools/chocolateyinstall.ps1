$ErrorActionPreference = 'Stop';

$version    = '0.15.3'
$packageName= 'Hearthstone Deck Tracker'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/HearthSim/Hearthstone-Deck-Tracker/releases/download/v$version/Hearthstone.Deck.Tracker-v$version.zip"

$desktop    = [Environment]::GetFolderPath('Desktop')
$shortcut   = Join-Path $desktop "$packageName.lnk"
$unzipDir   = Split-Path -parent $MyInvocation.MyCommand.Definition
$target     = Join-Path $unzipDir "$packageName\$packageName.exe"

Install-ChocolateyZipPackage -PackageName $packageName -Url $url -UnzipLocation $unzipDir
Install-ChocolateyShortcut -ShortcutFilePath $shortcut -TargetPath $target
