remote_file "#{Chef::Config[:file_cache_path]}/imgopt-#{node[:imageoptimization][:imgopt][:version]}.tar.gz" do
  source "http://lyncd.com/files/imgopt-#{node[:imageoptimization][:imgopt][:version]}.tar.gz"
  checksum node[:imageoptimization][:imgopt][:checksum]
  action :create_if_missing
end

bash "install imgopt" do
  cwd Chef::Config[:file_cache_path]
  user "root"
  code <<-EOH
    mkdir -p imgopt-#{node[:imageoptimization][:imgopt][:version]}
    cd imgopt-#{node[:imageoptimization][:imgopt][:version]}
    tar xf ../imgopt-#{node[:imageoptimization][:imgopt][:version]}.tar.gz --strip-components=1
    gcc -o jfifremove jfifremove.c
    cp jfifremove /usr/local/bin/
    cp imgopt /usr/local/bin/
    chmod a+x /usr/local/bin/imgopt
    cd ..
    rm -r imgopt-#{node[:imageoptimization][:imgopt][:version]}
  EOH
  not_if "which imgopt"
end
