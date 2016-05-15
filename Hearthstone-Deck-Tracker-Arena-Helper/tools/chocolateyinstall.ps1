$ErrorActionPreference = 'Stop';

$packageName= 'Arena Helper'
$url        = 'https://github.com/rembound/Arena-Helper/releases/download/0.8.0/ArenaHelper.v0.8.0.zip'
$invDir     = Split-Path -parent $MyInvocation.MyCommand.Definition
$toolsDir   = Split-Path -parent $invDir
$libDir     = Split-Path -parent $toolsDir
$pluginsDir = Join-Path $libDir "hearthstone-deck-tracker\tools\Hearthstone Deck Tracker\Plugins"

Install-ChocolateyZipPackage -PackageName $packageName -Url $url -UnzipLocation $pluginsDir
