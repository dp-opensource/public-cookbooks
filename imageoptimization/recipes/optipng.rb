
execute "install optipng" do
	command "apt-get install optipng"
  not_if "which optipng"
end
