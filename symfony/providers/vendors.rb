action :update do
  execute "do_bin_vendor_update" do
    user "www-data"
    cwd new_resource.path
    Chef::Log.info("Executing vendors update in  #{new_resource.path}")
    command "bin/vendors update"
  end
end

action :install do
  execute "do_bin_vendor_install" do
    user "www-data"
    cwd new_resource.path
    Chef::Log.info("Executing vendors install in  #{new_resource.path}/bin")
    command "bin/vendors install"
  end
end
