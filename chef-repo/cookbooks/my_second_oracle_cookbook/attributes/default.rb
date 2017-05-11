#default['my_second_oracle_cookbook']['testvalue'] = 'my test values of cookbook'
default['my_second_oracle_cookbook']['testvalue'] = 'my test value'
default['my_second_oracle_cookbook']['git_installer_name'] = "Git-2.12.2.2-64-bit.exe"
default['my_second_oracle_cookbook']['git_path_name'] = "c:/chef/#{node['my_second_oracle_cookbook']['git_installer_name']}"
default['my_second_oracle_cookbook']['git_source_url'] ="https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/#{node['my_second_oracle_cookbook']['git_installer_name']}"

default['my_version_cookbook']['config_file'] = "config.txt"
default['my_version_cookbook']['test_file'] = "file.txt"
if node['platform'] == "windows"
default['my_version_cookbook']['config_path'] = "D:/cheftest#{node['my_second_oracle_cookbook']['config_file']}"
default['my_version_cookbook']['file_path'] = "D:/cheftest/#{node['my_version_cookbook']['test_file']}"
default['my_version_cookbook']['owner'] = "administrator"
default['my_version_cookbook']['group'] = "administrator"
elsif node['platform'] == "ubuntu" || node['platform'] == "oracle"
default['my_version_cookbook']['config_path'] = "/root/#{node['my_version_cookbook']['config_file']}"
default['my_version_cookbook']['file_path'] = "/root/#{node['my_version_cookbook']['test_file']}"
default['my_version_cookbook']['owner'] = "root"
default['my_version_cookbook']['group'] = "root"
end