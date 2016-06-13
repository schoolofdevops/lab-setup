
exec { 'vagrant_download':
  cwd => '/tmp',
  command => '/usr/local/bin/wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.dmg',
  creates => '/tmp/vagrant_1.8.1.dmg',
   }
file {'/tmp/vagrant_1.8.1.dmg':
  mode => '0777',
  #require => Exec['vagrant_download'],
  }  
package { 'vagrant':
  provider => pkgdmg,
  ensure  => 'installed',
  source => '/tmp/vagrant_1.8.1.dmg',
  #require => Exec['vagrant_download'],
  }

exec { 'virtual_download':
  cwd => '/tmp',
  command => '/usr/local/bin/wget http://download.virtualbox.org/virtualbox/5.0.20/VirtualBox-5.0.20-106931-OSX.dmg',
  creates => '/tmp/VirtualBox-5.0.20-106931-OSX.dmg',
  }
file {'/tmp/VirtualBox-5.0.20-106931-OSX.dmg':
  mode => '0777',
  #require => Exec['virtual_download'],
  }
package { 'virtualbox':
  provider => pkgdmg,
  ensure => 'installed',
  source => '/tmp/VirtualBox-5.0.20-106931-OSX.dmg',
  #require => Exec['virtual_download'],
  }

  exec {'git_download':
    cwd => '/tmp',
    command => '/usr/local/bin/wget https://sourceforge.net/projects/git-osx-installer/files/git-2.8.1-intel-universal-mavericks.dmg',
    creates => '/tmp/git-2.8.1-intel-universal-mavericks.dmg',
  }
file {'/tmp/git-2.8.1-intel-universal-mavericks.dmg':
  mode => '0777',
  }
package {'git':
  provider => pkgdmg,
  ensure => 'installed',
  source => '/tmp/git-2.8.1-intel-universal-mavericks.dmg',
  #require => Exec['git_download'],
  }  

exec { 'atom_download':
   cwd => '/tmp',
   command => '/usr/local/bin/wget https://github.com/atom/atom/releases/download/v1.8.0/atom-mac.zip',
   creates => '/tmp/atom-mac.zip',

exec { 'atom unpack': 
   cwd => '/tmp',
   command => 'unzip atom-mac.zip'
   }  


