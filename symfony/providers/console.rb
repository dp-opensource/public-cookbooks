action :cmd do
  execute "do console command" do
    user "www-data"
    cwd new_resource.path
    Chef::Log.info("Executing console #{new_resource.command} in  #{new_resource.path}")
    if new_resource.debug
      user "www-data"
      command "php app/console #{new_resource.command} --env=#{new_resource.env} " + new_resource.optional_params.join(' ')
    else 
      user "www-data"
      command "whoami && php app/console #{new_resource.command} --env=#{new_resource.env} --no-debug " + new_resource.optional_params.join(' ')
    end
  end
end
