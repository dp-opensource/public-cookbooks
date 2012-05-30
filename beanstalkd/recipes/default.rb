package 'beanstalkd' do
	action :install
end

template "/etc/default/beanstalkd" do
  source "beanstalkd.erb"
  owner "root"
  group "root"
  mode 0644
  variables({
    :opts => node[:beanstalkd][:opts]
  })
end

service "beanstalkd" do
  action [:start]
end