include_recipe "apt"

apt_repository "mongodb-10gen" do
  uri "http://downloads-distro.mongodb.org/repo/ubuntu-upstart"
  distribution "dist" #meh 
  components ["10gen"]
  action :add
  keyserver "keyserver.ubuntu.com"
  key "7F0CEB10"
end

package "mongodb-10gen" do
  action :install
end