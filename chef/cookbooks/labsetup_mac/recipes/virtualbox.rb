##virtualbox install recipe

##download virtualbox dmg file with wget
execute 'virtualbox download' do
  cwd '/tmp'
  command  '/usr/local/bin/wget http://download.virtualbox.org/virtualbox/5.0.20/VirtualBox-5.0.20-106931-OSX.dmg'
  creates '/tmp/VirtualBox-5.0.20-106931-OSX.dmg'
  #not_if 'pkgutil --packages | grep virtualbox || brew cask list | grep virtualbox'
end

##create volume for virtualbox conert dmg to pkg
execute 'create virtualbox volume' do
  cwd '/tmp'
  command 'hdiutil attach VirtualBox-5.0.20-106931-OSX.dmg'
  creates '/Volumes/Virtualbox/Virtualbox.pkg'
  #not_if { File.exist?("/tmp/VirtualBox-5.0.20-106931-OSX.dmg") }
end

##install virtualbox pkg package 
execute 'install virtualbox' do
  cwd '/Volumes/Virtualbox'
  command "sudo installer -pkg Virtualbox.pkg -target '/'" 
  #creates '/Volumes/Virtualbox/Virtualbox.pkg'
  only_if { File.exist?("/Volumes/Virtualbox/Virtualbox.pkg") }
end  


##ibstall virtualbox with brew cask but it automatically install latest package
#execute 'virualbox install with brew' do
 # command 'brew cask install virtualbox'
  #not_if 'pkgutil --packages | grep virtualbox || brew cask list | grep virtualbox || brew list | grep virtualbox'
 #end 
