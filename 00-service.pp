# 00 - Service

dsc_service { 'Windows Update':
  dsc_ensure         => 'present',
  dsc_name           => 'wuauserv',
  dsc_state          => 'Running',
  dsc_startuptype    => 'Automatic',
  # 4
  # dsc_state          => 'Stopped',
  # dsc_startuptype    => 'Manual',
  dsc_builtinaccount => 'LocalSystem',
  dsc_displayname    => 'Windows Update',
  dsc_description    => 'Enables the detection, download, and installation of updates for Windows and other programs. If this service is disabled, users of this computer will not be able to use Windows Update or its automatic updating feature, and programs will not be able to use the Windows Update Agent (WUA) API.',
}

# Puppet Equivalent fewer options
# service { 'wuauserv':
#   ensure  => running,
#   enable => true,
# }



# 1. Get-Service wuauserv
# 2. run manifest
# 3. Get-Service wuauserv
# 4. mod manifest / re-run with --debug - note startuptype
# 5. Get-Service wuauserv
