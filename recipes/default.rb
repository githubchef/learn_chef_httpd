#
# Cookbook:: learn_chef_httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package httpd do
  action :install
end

service httpd do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '0644'
end
