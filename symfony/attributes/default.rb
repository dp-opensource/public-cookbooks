case node["platform"]
when "centos", "redhat", "fedora"
  default['symfony']['www_user']     = 'nobody'
when "debian", "ubuntu"
  default['symfony']['www_user']     = 'www-data'
else
  default['symfony']['www_user']     = 'www-data'
end

default['symfony']['environment']     = 'prod'
default['symfony']['debug']           = false

default['symfony']['database_driver'] = 'pdo_mysql'
default['symfony']['database_host'] = 'localhost'
default['symfony']['database_port'] = ''
default['symfony']['database_name'] = 'symfony'
default['symfony']['database_user'] = 'root'
default['symfony']['database_password'] = ''

default['symfony']['mailer_transport'] = 'smtp'
default['symfony']['mailer_host'] = 'localhost'
default['symfony']['mailer_user'] = ''
default['symfony']['mailer_password'] = ''

default['symfony']['locale'] = 'en'

default['symfony']['secret'] = 'ThisTokenIsNotSoSecretChangeIt'
