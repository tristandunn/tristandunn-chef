include_recipe "nginx::default"

directory "/var/www" do
  owner node[:user]
end

template "tristandunn" do
  path   "#{node[:nginx][:dir]}/sites-available/tristandunn"
  owner  node[:user]
  source "tristandunn.nginx"

  notifies :reload, "service[nginx]"
end

nginx_site "tristandunn" do
  enable true
end
