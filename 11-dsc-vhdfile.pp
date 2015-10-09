dsc_xvhdfile { 'TestVHDFileDirectory':
  dsc_vhdpath => 'c:\users\Administrator\Downloads\foo.vhd',
  dsc_filedirectory => {
    destinationpath => 'c:\destinationvhd',
    ensure => 'present',
    'type' => 'directory',
    force => true
  }
}

# 1. Type with EmbeddedInstance stuff
