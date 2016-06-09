#
# Cookbook Name:: allpack
# Recipe:: atom
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['labsetup_windows']['atom_display_name'] do
not_if do
  	File.exist?("#{node['labsetup_windows']['path']}#{node['labsetup_windows']['atom_display_name']}.exe")
  end
action :install
source node['labsetup_windows']['atom_url']
remote_file_attributes ({
    :path => "#{node['labsetup_windows']['path']}#{node['labsetup_windows']['atom_display_name']}.exe"
    })
installer_type :inno
end

