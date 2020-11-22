$params = @{
  packageName = 'sql2012.smo';
  installerType = 'msi';
  silentArgs = '/quiet';
  url = 'https://download.microsoft.com/download/F/3/C/F3C64941-22A0-47E9-BC9B-1A19B4CA3E88/ENU/x86/SharedManagementObjects.msi';
  checksum='EA278E7006B73A82B40BEE093C804D596C3FDA8E1B8687A666A4F189D44BE0BE';
  checksumType='Sha256';
  url64 = 'https://download.microsoft.com/download/F/3/C/F3C64941-22A0-47E9-BC9B-1A19B4CA3E88/ENU/x64/SharedManagementObjects.msi';
  checksum64 = '18731A3D1A6625D97364BF5846184C80E8434AC31D5D801D7BB76212B8E416AD';
  checksumType64 = 'Sha256';
  validExitCodes = @(0,3010)
}
Install-ChocolateyPackage @params
