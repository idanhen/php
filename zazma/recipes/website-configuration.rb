directory "/var/website/" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

directory "/var/website/configuration/" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

directory "/var/website/logs/" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

template "/var/website/configuration/#{node[:deploy][:website][:zazma][:configuration]}" do
  path "/var/website/configuration/#{node[:deploy][:website][:zazma][:configuration]}.php"
  source 'configuration_template.php.erb'
  owner 'root'
  group 'root'
  mode 0644
end