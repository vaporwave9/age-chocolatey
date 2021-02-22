$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/FiloSottile/age/releases/download/v1.0.0-beta7/age-v1.0.0-beta7-windows-amd64.zip'
    checksum64     = '97f2f8fc6e7450ec60bbfb5207dfc18806af258f68915ca712bba0ffbb9e75a1' 
    checksumType64 = 'sha256'
	SpecificFolder = 'age'
}

Install-ChocolateyZipPackage @packageArgs
