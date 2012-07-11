
package "curl"

bash "install imgopt" do
  cwd "/usr/local/src"
  user "root"
  code <<-EOH
    mkdir -p imgopt-#{node[:imageoptimization][:imgopt]} && \
    cd imgopt-#{node[:imageoptimization][:imgopt]}
    curl -L http://lyncd.com/files/imgopt-#{node[:imageoptimization][:imgopt]}.tar.gz | tar xzf - --strip-components=1 && \
    gcc -o jfifremove jfifremove.c && \
    cp jfifremove /usr/bin/ && \
    cp imgopt /usr/bin/ && \
    chmod a+x /usr/bin/imgopt
    cd .. && \
    rm -r imgopt-#{node[:imageoptimization][:imgopt]}
  EOH
  not_if "which imgopt"
end
