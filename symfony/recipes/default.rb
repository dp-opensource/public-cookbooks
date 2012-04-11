['git-core', 'sqlite3', 'php5-sqlite'].each do |pkg|
    package pkg do
        action :install
    end
end
