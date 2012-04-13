['git-core', 'sqlite3', 'php5-sqlite'].each do |pkg|
    package pkg do
        action :install
    end
end

# copy parameters.ini
template "#{new_resource.path}/app/config/parameters.ini" do
  source "parameters.ini.erb"
end