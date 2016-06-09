##git recipe

execute 'git install' do
  command 'brew install git'
  not_if 'pkgutil --packages | grep git || brew cask list | grep git || brew list | grep git'
end