
installed = `locale -a`.downcase

for supported in `cat #{node[:locale][:supported_path]} | grep "UTF-8"` do
    locale = supported.slice(0..(supported.index(' ') - 1))
    loc = locale.downcase
    unless installed.include?(loc.gsub("utf-8", "utf8")) || installed.include?(loc)
        puts `sudo locale-gen #{locale}`
    end
end