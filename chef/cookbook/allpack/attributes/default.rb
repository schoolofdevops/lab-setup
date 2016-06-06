default['allpack']['atom_url'] = "https://github.com/atom/atom/releases/download/v1.7.3/AtomSetup.exe"
default['allpack']['atom_display_name'] = "AtomSetup"

default['allpack']['git_version'] = "1.8.0-preview20121022"
default['allpack']['git_url'] = "http://github.com/downloads/msysgit/git/Git-#{node['allpack']['git_version']}.exe"
default['allpack']['git_checksum'] = "8ec19d04912fd27d7350823c857a4807b550fa63a3744bf6fd2841de8cfa9a0f"
default['allpack']['git_display_name'] = "Git-#{ node['allpack']['git_version'] }"

default['allpack']['virtualbox_version'] = "5.0.20-106931-Win"
default['allpack']['virtualbox_url'] = 'http://download.virtualbox.org/virtualbox/5.0.20/VirtualBox-5.0.20-106931-Win.exe'
default['allpack']['virtualbox_checksum'] = "4f167b0967e3c2283eef986b8ffa3fec82390cd79038568eae3ca65c6ab4c294"
default['allpack']['virtualbox_display_name'] = "Virtualbox-#{ node['allpack']['virtualbox_version'] }"

default['allpack']['vagrant_msi_version'] = '1.8.1'
default['allpack']['vagrant_url']  = "https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1.msi"
default['allpack']['vagrant_checksum']  = "6468cc140f6f236c3ac4bc0bbb1cc2177114249bc344e0aba8c826eae9cc6eb2"
default['allpack']['vagrant_display_name'] = "Vagrant_#{ node['allpack']['vagrant_msi_version'] }"

default['allpack']['canemu_version'] = "latest"
default['allpack']['canemu_url'] = "http://www.fosshub.com/ConEmu.html/ConEmuSetup.150813g.exe"
default['allpack']['canemu_checksum'] = "77de7dd6006de476e3de3b70b4ff109f080bb191"
default['allpack']['canemu_display_name'] = "ConEmu_#{node['allpack']['canemu_version']}"