
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-6.2.0.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64

  softwareName   = 'lycheeslicer*'

  checksum64     = '791D551E7399B2E1DB9147D7FBB31FF6A8BB78BAFC4057970067C9305658A8E5'
  checksumType64 = 'sha256'

  silentArgs     = '/S'

  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs



















