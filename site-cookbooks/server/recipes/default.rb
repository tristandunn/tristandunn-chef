include_recipe "nginx::default"

directory "/var/www" do
  owner node[:user]
end

template "tristandunn" do
  path   "#{node[:nginx][:dir]}/sites-available/tristandunn"
  owner  node[:user]

  if File.exist?("/etc/ssl/tristandunn.com.crt")
    source "tristandunn.ssl.nginx"
  else
    source "tristandunn.nginx"
  end

  notifies :reload, "service[nginx]"
end

nginx_site "tristandunn" do
  enable true
end
