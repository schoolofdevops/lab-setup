#
# Cookbook Name:: allpack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "labsetup_windows::atom"
include_recipe "labsetup_windows::virtualbox"
include_recipe "labsetup_windows::vagrant"
include_recipe "labsetup_windows::git"
