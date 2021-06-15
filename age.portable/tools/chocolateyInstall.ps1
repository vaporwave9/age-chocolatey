$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/FiloSottile/age/releases/download/v1.0.0-rc.3/age-v1.0.0-rc.3-windows-amd64.zip'
    checksum64     = '0FCE238EF0C460EFB82558D7A90AA6E092CE38CC6709218178FF56549E895ABB' 
    checksumType64 = 'sha256'
	SpecificFolder = 'age'
}

Install-ChocolateyZipPackage @packageArgs
