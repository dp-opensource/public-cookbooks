remote_file "#{Chef::Config[:file_cache_path]}/pngout-#{node[:imageoptimization][:pngout][:version]}.tar.gz" do
  source "http://static.jonof.id.au/dl/kenutils/pngout-#{node[:imageoptimization][:pngout][:version]}.tar.gz"
  checksum node[:imageoptimization][:pngout][:checksum]
  action :create_if_missing
end

bash "install pngout" do
  cwd Chef::Config[:file_cache_path]
  user "root"
  code <<-EOH
    mkdir -p pngout-#{node[:imageoptimization][:pngout][:version]} && \
    cd pngout-#{node[:imageoptimization][:pngout][:version]} && \
    tar xf ../pngout-#{node[:imageoptimization][:pngout][:version]}.tar.gz --strip-components=1 && \
    cp i686/pngout* /usr/local/bin/pngout && \
    cd ..
    rm -r pngout-#{node[:imageoptimization][:pngout][:version]}
  EOH
  not_if "which pngout"
end
