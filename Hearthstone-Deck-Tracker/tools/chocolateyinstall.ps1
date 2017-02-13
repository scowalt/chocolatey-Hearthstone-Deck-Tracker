$ErrorActionPreference = 'Stop';

$packageName= 'Hearthstone Deck Tracker'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/HearthSim/Hearthstone-Deck-Tracker/releases/download/v$env:chocolateyPackageVersion/Hearthstone.Deck.Tracker-v$env:chocolateyPackageVersion.zip"

$desktop    = [Environment]::GetFolderPath('Desktop')
$shortcut   = Join-Path $desktop "$packageName.lnk"
$unzipDir   = Split-Path -parent $MyInvocation.MyCommand.Definition
$target     = Join-Path $unzipDir "$packageName\$packageName.exe"

Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url $url `
  -UnzipLocation $toolsDir `
  -Checksum 'D1E2FA8C3D0D46DF6C8EE265A9AA0C329C2FBD3049167ADA1F9A4BC9BB7DD69F' `
  -ChecksumType 'sha256' `

Install-ChocolateyShortcut -ShortcutFilePath $shortcut -TargetPath $target
