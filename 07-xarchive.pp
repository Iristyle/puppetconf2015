# 07 xArchive - gallery resource for zips

dsc_xArchive {'fooarchive':
  dsc_path => ['c:\\ProgramData\\PuppetLabs\\Puppet\\etc'],
  dsc_destination => 'c:\\puppet-etc.zip',
  dsc_compressionlevel => 'Fastest',
  dsc_destinationtype  => 'File',
}

# 1. verify no c:\puppet-etc.zip
# 2. run manifest
# 3. explorer c:\puppet-etc.zip
