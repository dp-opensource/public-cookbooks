
execute "install jpegtran" do
	command "apt-get install libjpeg-progs"
  not_if "which jpegtran"
end
