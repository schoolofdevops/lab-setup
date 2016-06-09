#
# Cookbook Name:: allpack
# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
windows_package node['labsetup_windows']['git_display_name'] do
  not_if do
  	File.exist?("#{node['labsetup_windows']['path']}#{node['labsetup_windows']['git_display_name']}.exe")
  end
  action :install
  source node['labsetup_windows']['git_url']
  checksum node['labsetup_windows']['git_checksum']
   remote_file_attributes ({
    :path => "#{node['labsetup_windows']['path']}#{node['labsetup_windows']['git_display_name']}.exe"
    })
   installer_type :inno
   options "/VERYSILENT"
end
