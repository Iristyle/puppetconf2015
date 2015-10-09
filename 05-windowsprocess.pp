# 05 - Windows Process

# Unique to DSC
dsc_windowsprocess { 'ping-test':
  # dsc_ensure    => 'Present',
  dsc_ensure    => 'Absent',
  dsc_path       => 'C:\Windows\System32\ping.exe',
  dsc_arguments => '-t -n 120 localhost',
}

# 1. get-process ping*
# 2. run manifest to create
# 3. get-process ping*
# 4. change to absent and re-run
# 5. get-process ping*
