$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/FiloSottile/age/releases/download/v1.0.0-rc.1/age-v1.0.0-rc.1-windows-amd64.zip'
    checksum64     = 'A41A4C9D5F1B3F04C1C23F5E15B9129EA81250B88E0B7250081AB93F650AAF63' 
    checksumType64 = 'sha256'
	SpecificFolder = 'age'
}

Install-ChocolateyZipPackage @packageArgs
