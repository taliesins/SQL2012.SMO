$params = @{
  packageName = 'sql2012.smo';
  installerType = 'msi';
  silentArgs = '/quiet';
  url = 'http://download.microsoft.com/download/3/A/6/3A632674-A016-4E31-A675-94BE390EA739/ENU/x86/SharedManagementObjects.msi';
  checksum='9D9D1D0F4D498C3D4A35AFA51075C48734F5A84628F1679092378F760D339756';
  checksumType='Sha256';
  url64 = 'http://download.microsoft.com/download/3/A/6/3A632674-A016-4E31-A675-94BE390EA739/ENU/x64/SharedManagementObjects.msi';
  checksum64 = '7FF7E967C20F2B7402603D0A7D468246308135D93CD369EB49D968FAC8239CEB';
  checksumType64 = 'Sha256';
  validExitCodes = @(0,3010)
}
Install-ChocolateyPackage @params
