
class lab_v2 {

file { 'C:\windows\tmp\Git-2.8.3-32-bit.exe':
  source => 'puppet:///modules/lab_v2/files/Git-2.8.3-32-bit.exe'
  source_permission => ignore,
}
package { 'git':
  ensure => installed,
  source => 'C:\windows\tmp\Git-2.8.3-32-bit.exe'
  install_option => ['VERYSILENT'],
  require => File['C:\windows\tmp\Git-2.8.3-32-bit.exe']
}

file { 'C:\windows\tmp\':
  source => 'puppet:///modules/lab_v2/files/'
  source_permission => ignore,
}
package { 'atom':
  ensure => installed,
  source => 'C:\windows\tmp\'
  install_option => ['VERYSILENT'],
  require => File['C:\windows\tmp\']
}

file { 'C:\windows\tmp\VirtualBox-5.0.20-106931-Win.exe':
  source => 'puppet:///modules/lab_v2/files/VirtualBox-5.0.20-106931-Win.exe'
  source_permission => ignore,
}
package { 'virtualbox':
  ensure => installed,
  source => 'C:\windows\tmp\VirtualBox-5.0.20-106931-Win.exe'
  install_option => ['VERYSILENT'],
  require => File['C:\windows\tmp\VirtualBox-5.0.20-106931-Win.exe']
}

file { 'C:\windows\tmp\':
  source => 'puppet:///modules/lab_v2/files/'
  source_permission => ignore,
}
package { 'git':
  ensure => installed,
  source => 'C:\windows\tmp\'
  install_option => ['VERYSILENT'],
  require => File['C:\windows\tmp\']
}

}

