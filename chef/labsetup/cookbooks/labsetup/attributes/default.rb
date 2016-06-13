case node['platform_family']
when 'windows'
default['labsetup']['path'] = "C:\\"
default['labsetup']['atom_url'] = "https://github.com/atom/atom/releases/download/v1.7.3/AtomSetup.exe"
default['labsetup']['atom_display_name'] = "AtomSetup"
default['labsetup']['git_version'] = "1.8.0-preview20121022"
default['labsetup']['git_url'] = "http://github.com/downloads/msysgit/git/Git-#{node['labsetup']['git_version']}.exe"
default['labsetup']['git_checksum'] = "8ec19d04912fd27d7350823c857a4807b550fa63a3744bf6fd2841de8cfa9a0f"
default['labsetup']['git_display_name'] = "Git-#{ node['labsetup']['git_version'] }"
default['labsetup']['virtualbox_version'] = "5.0.20-106931-Win"
default['labsetup']['virtualbox_url'] = 'http://download.virtualbox.org/virtualbox/5.0.20/VirtualBox-5.0.20-106931-Win.exe'
default['labsetup']['virtualbox_checksum'] = "4f167b0967e3c2283eef986b8ffa3fec82390cd79038568eae3ca65c6ab4c294"
default['labsetup']['virtualbox_display_name'] = "Virtualbox-#{ node['labsetup']['virtualbox_version'] }"
default['labsetup']['vagrant_msi_version'] = '1.8.1'
default['labsetup']['vagrant_url']  = "https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.msi"
default['labsetup']['vagrant_checksum']  = "6468cc140f6f236c3ac4bc0bbb1cc2177114249bc344e0aba8c826eae9cc6eb2"
default['labsetup']['vagrant_display_name'] = "Vagrant_#{ node['labsetup']['vagrant_msi_version'] }"

when 'mac_os_x'
default['labsetup']['var'] = "variable"

end	