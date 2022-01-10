
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-3.6.2.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64

  softwareName   = 'lycheeslicer*'

  checksum64     = 'AB13DFC35C0E5A2D2C49DE9DCC48FB66E0672DB7D39C823579F44F61C8CE3924'
  checksumType64 = 'sha256'

  silentArgs     = '/S'

  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs



















