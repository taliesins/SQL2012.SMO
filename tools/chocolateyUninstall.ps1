# HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\
$msiId = '{DA1C1761-5F4F-4332-AB9D-29EDF3F8EA0A}'
$msiId64 = '{FA0A244E-F3C2-4589-B42A-3D522DE79A42}'

$package = 'SQL2012.SMO'

try {
  Uninstall-ChocolateyPackage $package 'MSI' -SilentArgs "$msiId /qb" -validExitCodes @(0)
  if ([Environment]::IsIs64BitOperatingSystem) { Uninstall-ChocolateyPackage $package 'MSI' -SilentArgs "$msiId64 /qb" -validExitCodes @(0) }
  # the following is all part of error handling
  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw 
}
