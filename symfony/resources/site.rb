actions :install

attribute :project_root, :kind_of => String
attribute :database_driver, :kind_of => String, :default => 'pdo_mysql'
attribute :database_host, :kind_of => String, :default => 'localhost'
attribute :database_port, :kind_of => String, :default => ''
attribute :database_name, :kind_of => String, :default => 'symfony'
attribute :database_user, :kind_of => String, :default => 'root'
attribute :database_password, :kind_of => String, :default => ''
attribute :mailer_transport, :kind_of => String, :default => 'smtp'
attribute :mailer_host, :kind_of => String, :default => 'localhost'
attribute :mailer_user, :kind_of => String, :default => ''
attribute :mailer_password, :kind_of => String, :default => ''
attribute :additional_parameters, :kind_of => Hash, :default => nil
attribute :locale, :kind_of => String, :default => 'en'
attribute :secret, :kind_of => String, :default => 'ThisTokenIsNotSoSecretChangeIt'