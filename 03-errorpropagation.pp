# 03 Error Propagation

# dsc_file {'invalid dsc props':
#   dsc_foo             => 'bar',
# }

dsc_file {'good_test_dir':
  dsc_ensure          => 'present',
  dsc_type            => 'Directory',
  dsc_destinationpath => 'C:/test'
}
dsc_file {'bad_test_dir':
  dsc_ensure          => 'present',
  dsc_type            => 'Directory',
  dsc_destinationpath => 'Q:/not/here'
}

# 1. run first file resource
# 2. comment 1st / uncomment rest and run
