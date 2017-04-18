src_filename = "tmate-#{node['sprout']['tmate']['version']}-static-linux-amd64.tar.gz"
work_path = Chef::Config['file_cache_path']
src_filepath = "#{work_path}/#{src_filename}"
extract_path = "#{work_path}/tmate"
src_url = "#{node['sprout']['tmate']['uri']}/#{node['sprout']['tmate']['version']}/#{src_filename}"

remote_file src_filepath do
  source src_url
  checksum node['sprout']['tmate']['checksum']
  mode '0755'
end

bash 'extract_module' do
  cwd work_path
  code <<-EOH
    mkdir -p #{extract_path}
    tar xzf #{src_filepath} -C #{extract_path}
    mv #{extract_path}/#{File.basename(src_filename, '.tar.gz')}/tmate #{node['bin_dir']}
    EOH
end
