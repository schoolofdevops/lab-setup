#
# Cookbook Name:: labsetup
# Recipe:: atom-windows
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['labsetup']['atom_display_name'] do
not_if do
  	File.exist?("#{node['labsetup']['path']}#{node['labsetup']['atom_display_name']}.exe")
  end
action :install
source node['labsetup']['atom_url']
remote_file_attributes ({
    :path => "#{node['labsetup']['path']}#{node['labsetup']['atom_display_name']}.exe"
    })
installer_type :inno
end
