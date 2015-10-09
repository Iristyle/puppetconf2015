# 01 User Example

user { 'john-puppet':
  ensure      => present,
  # Puppet can create home dir, DSC cannot
  managehome  => true,
  comment     => 'user account for John with Puppet',
  password    => 'puppet',
  # Puppet can do this, DSC cannot
  groups      => ['BUILTIN\Administrators', 'Users'],
}

dsc_user { 'john-dsc':
  dsc_ensure                   => present,
  dsc_username                 => 'john-dsc',
  dsc_description              => 'user account for John with DSC',
  dsc_password                 => { 'user' => 'john-dsc', 'password' => 'john-password'},

  # DSC specific policies
  dsc_passwordchangerequired   => 'true',
  dsc_passwordneverexpires     => 'false',
  dsc_passwordchangenotallowed => 'false',
  dsc_disabled                 => 'false',
  dsc_fullname                 => 'John DSC',
}

# dsc_user { 'john-dsc':
#   dsc_ensure                   => absent,
#   dsc_username                 => 'john-dsc',
# }

# 1. slight semantic differences - puppet docs at https://docs.puppetlabs.com/references/latest/type.html#user
# 1. run manifest
# 2. show c:\users\
# 3. run manifest to absent users - note separate DSC one
