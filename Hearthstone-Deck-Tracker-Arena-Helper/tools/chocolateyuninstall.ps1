$ErrorActionPreference = 'Stop';

$packageName = 'Arena Helper'
$zipName     = 'ArenaHelper.v0.8.0.zip'
$invDir      = Split-Path -parent $MyInvocation.MyCommand.Definition
$toolsDir    = Split-Path -parent $invDir
$libDir      = Split-Path -parent $toolsDir
$packageDir  = Join-Path $libDir "hearthstone-deck-tracker\tools\Hearthstone Deck Tracker\Plugins\ArenaHelper"

Uninstall-ChocolateyZipPackage $packageName $zipName
Remove-Item $packageDir -recurse
