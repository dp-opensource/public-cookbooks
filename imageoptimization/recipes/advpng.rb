
execute "install advpng" do
	command "apt-get install advancecomp"
  not_if "which advpng"
end
