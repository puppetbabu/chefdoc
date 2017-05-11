#
# Cookbook Name:: my_second_oracle_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

=begin
Chef::Log.info("Hello My first cookbook")
directory '/etc/apache2' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

=end


remote_file node['my_second_oracle_cookbook']['git_path_name'] do
  source node['my_second_oracle_cookbook']['git_source_url']
  action :create
end


execute 'install_git' do
 command "#{node['my_second_oracle_cookbook']['git_path_name']} /SILENT"
not_if { File.exists?('C:\Program Files\Git\bin\git.exe')}
end


#Chef::Log.info("my attribues is #{node['my_second_oracle_cookbook']['testvalue']}")


#Chef::Log.info("my attribues is #{node['my_second_oracle_cookbook']['testvalue']}")

#Chef::Log.info("my attribues is #{node['my_second_oracle_cookbook']['git_installer_name']}")


directory '/etc/apache2' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end













