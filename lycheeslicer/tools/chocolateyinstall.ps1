
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-3.6.4-beta.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64

  softwareName   = 'lycheeslicer*'

  checksum64     = '7A923392AC136ED8794E9F371E1380BA061088E994387B0CE0DA4E7B48FD836D'
  checksumType64 = 'sha256'

  silentArgs     = '/S'

  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs



















