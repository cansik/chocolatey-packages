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
  checksum64      = "57b949555708567b3d7f5153d51a42d5f917f8ffca9bdbd550ee220025588e40"
  checksumType64  = "sha256"
}

Install-ChocolateyPackage @packageArgs

Write-Output ""
