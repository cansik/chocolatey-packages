$ErrorActionPreference = 'Stop';

$packageName    = "${ENV:ChocolateyPackageName}"
$packageTitle   = "${ENV:ChocolateyPackageTitle}"
$url64          = "https://github.com/mesonbuild/meson/releases/download/${ENV:ChocolateyPackageVersion}/meson-${ENV:ChocolateyPackageVersion}-64.msi"
$silentArgs     = "/qn /norestart /l*v `"$(${ENV:TEMP})\$(${packageName}).$(${ENV:chocolateyPackageVersion}).MsiInstall.log`""

$packageArgs = @{
  packageName     = "${packageName}"
  softwareName    = "${packageTitle}"
  url64           = "${url64}"
  fileType        = "msi"
  silentArgs      = "${silentArgs}"
  validExitCodes  = @(0)
  checksum64      = "c6c06e2f4b49c2935e618675f2b41d832ab9091e06517b5227f180e593d5e8af"
  checksumType64  = "sha256"
}

Install-ChocolateyPackage @packageArgs

Write-Output ""
