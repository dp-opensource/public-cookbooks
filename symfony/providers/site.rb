action :install do
	# copy parameters.ini
	template "#{new_resource.project_root}/app/config/parameters.ini" do
	 	cookbook "symfony" #if we dont set this, the template cmd would search in the calling cookbook
	 	source "parameters.ini.erb"
	 	only_if do ::File.directory?("#{new_resource.project_root}") end
	 	variables({
  	:database_driver => new_resource.database_driver,
  	:database_host => new_resource.database_host,
  	:database_port => new_resource.database_port,
  	:database_name => new_resource.database_name,
  	:database_user => new_resource.database_user,
  	:database_password => new_resource.database_password,
  	:mailer_transport => new_resource.mailer_transport,
  	:mailer_host => new_resource.mailer_host,
  	:mailer_user => new_resource.mailer_user,
  	:mailer_password => new_resource.mailer_password,
  	:additional_parameters => new_resource.additional_parameters,
  	:locale => new_resource.locale,
  	:secret => new_resource.secret,
	 	})
	end
end