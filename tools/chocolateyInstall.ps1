$params = @{
  packageName = 'sql2012.smo';
  fileType = 'msi';
  silentArgs = '/quiet';
  url = 'http://download.microsoft.com/download/F/E/D/FEDB200F-DE2A-46D8-B661-D019DFE9D470/ENU/x86/SharedManagementObjects.msi';
  checksum='AFC0ECCB35C979801344B0DC04556C23C8B957F1BDEE3530BC1A59D5C704CE64'
  checksumType='Sha256'
}

Install-ChocolateyPackage @params

# install both x86 and x64 editions of SMO since x64 supports both
# to install both variants of p owershell, both variants of SMO must be present
if (Get-ProcessorBits -eq 64) {
  $params['url'] = ''
  $params['url64'] = 'http://download.microsoft.com/download/F/E/D/FEDB200F-DE2A-46D8-B661-D019DFE9D470/ENU/x64/SharedManagementObjects.msi'
  $params['checksum64'] = 'ED753D85B51E7EAE381085CAD3DCC0F29C0B72F014F8F8FBA1AD4E0FE387CE0A'
  $params['checksumType64'] = 'Sha256'
  Install-ChocolateyPackage @params
}