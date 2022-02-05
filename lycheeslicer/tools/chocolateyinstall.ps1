
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-3.6.6.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64

  softwareName   = 'lycheeslicer*'

  checksum64     = 'FBDF05BCE51A908B7B5871745EB7BBF105F0C520113FE6396D0B29B7592B0F93'
  checksumType64 = 'sha256'

  silentArgs     = '/S'

  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs



















