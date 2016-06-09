class lab_v2 {
  file { 'C:\windows\tmp\Git-2.8.3-32-bit.exe':
    source => 'puppet:///modules/labsetup_windows/files/Git-2.8.3-32-bit.exe'
    source_permission => ignore,
  }
  package { 'git':
    ensure => installed,
    source => 'C:\windows\tmp\Git-2.8.3-32-bit.exe'
    install_option => ['VERYSILENT'],
    require => File['C:\windows\tmp\Git-2.8.3-32-bit.exe']  
  }

  file { 'C:\windows\tmp\AtomSetup.exe':
    source => 'puppet:///modules/labsetup_windows/files/AtomSetup.exe'
    source_permission => ignore,
  }
  package { 'atom':
    ensure => installed,
    source => 'C:\windows\tmp\'
    install_option => ['VERYSILENT'],
    require => File['C:\windows\tmp\AtomSetup.exe']
  }

  file { 'C:\windows\tmp\VirtualBox-5.0.20-106931-Win.exe':
    source => 'puppet:///modules/labsetup_windows/files/VirtualBox-5.0.20-106931-Win.exe'
    source_permission => ignore,  
  }
  package { 'virtualbox':
    ensure => installed,
    source => 'C:\windows\tmp\VirtualBox-5.0.20-106931-Win.exe'
    install_option => ['VERYSILENT'],
    require => File['C:\windows\tmp\VirtualBox-5.0.20-106931-Win.exe']
  }

  file { 'C:\windows\tmp\vagrant_1.8.1.msi':
    source => 'puppet:///modules/labsetup_windows/files/vagrant_1.8.1.msi'
    source_permission => ignore,
  }
  package { 'vagrant':
    ensure => installed,
    source => 'C:\windows\tmp\vagrant_1.8.1.msi'
    install_option => ['VERYSILENT'],
    require => File['C:\windows\tmp\vagrant_1.8.1.msi']
  }

  file { 'C:\windows\tmp\ConEmu_150813g_English.paf.exe':
    source => 'puppet:///modules/labsetup_windows/files/ConEmu_150813g_English.paf.exe'
    source_permission => ignore,
  }
  package { 'conemu':
    ensure => installed,
    source => 'C:\windows\tmp\ConEmu_150813g_English.paf.exe'
    install_option => ['VERYSILENT'],
    require => File['C:\windows\tmp\ConEmu_150813g_English.paf.exe']
  }
}



