
package "curl"

bash "install pngout" do
  cwd "/usr/local/src"
  user "root"
  code <<-EOH
    mkdir -p pngout-#{node[:imageoptimization][:pngout]} && \
    cd pngout-#{node[:imageoptimization][:pngout]}
    curl -L http://static.jonof.id.au/dl/kenutils/pngout-#{node[:imageoptimization][:pngout]}.tar.gz | tar xzf - --strip-components=1 && \
    cp i686/pngout* /usr/bin/pngout
    cd .. && \
    rm -r pngout-#{node[:imageoptimization][:pngout]}
  EOH
  not_if "which pngout"
end