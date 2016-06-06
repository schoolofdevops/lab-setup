#
# Cookbook Name:: allpack
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "allpack::atom"
include_recipe "allpack::virtualbox"
include_recipe "allpack::vagrant"
include_recipe "allpack::git"
include_recipe "allpack::canemu"