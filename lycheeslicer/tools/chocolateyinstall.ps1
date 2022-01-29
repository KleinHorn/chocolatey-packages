
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-3.6.5.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64

  softwareName   = 'lycheeslicer*'

  checksum64     = '8577B6A25BB6CB4241D263F029711CB7ECEA39C74C83CA63BCED5FD44EB6FA98'
  checksumType64 = 'sha256'

  silentArgs     = '/S'

  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs



















