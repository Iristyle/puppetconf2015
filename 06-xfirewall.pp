# 06 xFirewall - gallery resource

dsc_xFirewall { 'inbound-2222':
  dsc_ensure => 'present',
  dsc_name => 'inbound2222',
  dsc_displayname => 'Inbound DSC 2222 Test',
  dsc_displaygroup => 'A Puppet + DSC Test',
  dsc_access => 'Allow',
  dsc_state => 'Disabled',
  dsc_direction => 'Inbound',
}

# 1. open wf.msc
# 2. run manifest
# 3. refresh
