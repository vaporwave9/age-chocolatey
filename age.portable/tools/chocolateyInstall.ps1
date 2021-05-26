$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName    = $Env:ChocolateyPackageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64          = 'https://github.com/FiloSottile/age/releases/download/v1.0.0-rc.2/age-v1.0.0-rc.2-windows-amd64.zip'
    checksum64     = '2B8729DF0C9B20055C50B6A58F888EE6AA1C7107E256EB5E63585358853AA8E9' 
    checksumType64 = 'sha256'
	SpecificFolder = 'age'
}

Install-ChocolateyZipPackage @packageArgs
