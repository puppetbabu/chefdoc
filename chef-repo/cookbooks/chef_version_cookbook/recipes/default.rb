#
# Cookbook Name:: chef_version_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

run_context.cookbook_collection.each do |key, cookbook|
node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end


cookbook_file '/tmp/testfile.txt' do
  source 'file.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end


file '/tmp/testfile.txt' do
  content 'This text to be added to test.txt'
  mode '0755'
  owner 'root'
  group 'root'
end

Chef::Log.info("my plotform is #{node['plotform']}")

if node['plotform'] == 'windows'
	Chef::Log.info("i am windows")
else
	Chef::Log.info("i am not windows")
end


Chef::Log.info("my value inside LSB and id is #{node['lsb']['id']}")





















